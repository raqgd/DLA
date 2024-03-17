from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import TimeoutException, StaleElementReferenceException
import time
import sys
import csv
import re

sys.stdout.reconfigure(encoding='utf-8')

#Establecemos la página que queremos abrir
driver = webdriver.Chrome()
url = 'https://mister.mundodeportivo.com/'
# Datos de inicio de sesión (correo electrónico y contraseña)
email = 'dreamleagueassistant@gmail.com'
password = 'PC1_GR_ 4'

#Abrir adblock
options = webdriver.ChromeOptions()
options.add_argument('--ignore-certificate-errors')
options.add_argument('load-extension=' + r"C:\Users\pelay\Desktop\PC1\DreamLeagueAssitant_PC1\adblocker")
options.add_argument('--disable-notifications')
driver = webdriver.Chrome(options=options)
driver.maximize_window()

time.sleep(1)

#Cerramos la página de adblocker
driver.switch_to.window(driver.window_handles[1])
driver.close()
driver.switch_to.window(driver.window_handles[0])
time.sleep(2)

#Abrimos la página
driver.get(url)
time.sleep(1)

#Aceptar cookies
wait = WebDriverWait(driver, 10)
boton_cookies = driver.find_element(By.XPATH, '/html/body/div[1]/div/div/div/div/div/div[2]/button[2]')
boton_cookies.click()

time.sleep(0.2)

#Le damos a empezar 4 veces
for i in range(4):
    boton_empezar = driver.find_element(By.XPATH, '/html/body/div[2]/div/div/div[2]/div/button')
    boton_empezar.click()
    time.sleep(1)

time.sleep(1)

#Darle al boton iniciar con google
boton_google = driver.find_element(By.XPATH, '/html/body/div[2]/div/div/div[2]/div/button[3]')
boton_google.click()
time.sleep(1)

#Metemos el email
email = driver.find_element(By.XPATH, '/html/body/div[2]/div/div/div[2]/div/form/div[1]/input')
email.send_keys('dreamleagueassistant@gmail.com')
time.sleep(1)

#Metemos contraseña
password = driver.find_element(By.XPATH, '/html/body/div[2]/div/div/div[2]/div/form/div[2]/input')
password.send_keys('PC1_GR_ 4')
time.sleep(1)

#Le damos a iniciar sesion
boton_iniciar = driver.find_element(By.XPATH, '/html/body/div[2]/div/div/div[2]/div/form/div[3]/button')
boton_iniciar.click()
time.sleep(1)

#Nos vamos a más
boton_mas = driver.find_element(By.XPATH, '//*[@id="content"]/header/div[2]/ul/li[5]/a')
boton_mas.click()
time.sleep(.7)

#Nos vamos a jugadores
boton_jugadores = driver.find_element(By.XPATH, '//*[@id="content"]/div[2]/div[1]/button[2]')
boton_jugadores.click()
time.sleep(1)

#Le damos al desplegable
boton_2 = driver.find_element(By.XPATH, '/html/body/div[7]/div[3]/div[1]/div[3]/div/select')
boton_2.click()
time.sleep(1)

opcion_2 = driver.find_element(By.XPATH, '/html/body/div[7]/div[3]/div[1]/div[3]/div/select/option[2]')
opcion_2.click()
time.sleep(1)

boton_2.click()
time.sleep(1)

button = True
while button:

    try:
        driver.find_element(By.CLASS_NAME, 'search-players-more')
        time.sleep(3)
        driver.find_element(By.CLASS_NAME, 'search-players-more').click()
    except:
        button = False

posiciones = {
    "1": "Portero",
    "2": "Defensa",
    "3": "Mediocentro",
    "4": "Delantero"
}

links_jugadores = []

#Contenedor de jugadores
lista_jugadores = driver.find_element(By.CLASS_NAME, 'player-list').find_elements(By.TAG_NAME, 'li')


for jugador in lista_jugadores:
    link = jugador.find_element(By.TAG_NAME, 'a').get_attribute('href')
    links_jugadores.append(link)

jugadores_info = []
csv_columns = ['ID', 'Nombre', 'Equipo', 'Posición']

header_not_completed = True

for link in links_jugadores:
    driver.get(link)
    regex_id = r'/players/(\d+)'
    id = int(re.search(regex_id, link).group(1))
    player_info = driver.find_element(By.CLASS_NAME, 'player-info').find_element(By.CLASS_NAME, 'left')
    player_name = f'{driver.find_element(By.CLASS_NAME, "name").text.strip()} {driver.find_element(By.CLASS_NAME, "surname").text.strip()}' if driver.find_element(By.CLASS_NAME, "name").text.strip() else driver.find_element(By.CLASS_NAME, "surname").text.strip()
    position_team = player_info.find_element(By.CLASS_NAME, 'team-position')
    team = position_team.find_element(By.TAG_NAME, 'a').get_attribute('data-title')
    posicion_numero = position_team.find_element(By.TAG_NAME, 'i').get_attribute('class')
    numero_posicion = posicion_numero.split(' ')[0].split('-')[1]
    posicion = posiciones.get(numero_posicion, "Desconocido")

    # Obtener las jornadas y escribir la información en el diccionario
    jugador_data = {'ID': id, 'Nombre': player_name, 'Equipo': team, 'Posición': posicion}

    caja_jornadas = driver.find_element(By.CLASS_NAME, 'box-scores').find_elements(By.CLASS_NAME, 'btn-player-gw')
    jornadas = [c.find_element(By.CLASS_NAME, 'gw').text.strip() for c in reversed(caja_jornadas)]

    if header_not_completed:
        for c in reversed(caja_jornadas):
            numero_jornada = c.find_element(By.CLASS_NAME, 'gw').text.strip()
            csv_columns.append(numero_jornada)
        header_not_completed = False

    for i, c in enumerate(reversed(caja_jornadas)):
        barra_jornada = c.find_element(By.CLASS_NAME, 'bar')
        try:
            puntos = barra_jornada.find_element(By.CLASS_NAME, 'score').text.strip()
        except:
            puntos = 0
        jugador_data[jornadas[i]] = puntos

    jugadores_info.append(jugador_data)

# Escribir la información en un archivo CSV
csv_file_path = 'jugadores_info.csv'
with open(csv_file_path, 'w', newline='', encoding='utf-8') as csv_file:
    writer = csv.DictWriter(csv_file, fieldnames=csv_columns)
    writer.writeheader()
    for jugador_info in jugadores_info:
        writer.writerow(jugador_info)
