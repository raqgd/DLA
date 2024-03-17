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
options.add_argument('load-extension=' + r"C:\Users\Raque\OneDrive\Documentos\Uni\3º\1semestre\Proyecto I\webscrapping\adblocker")
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
boton_cookies = driver.find_element(By.XPATH, '//*[@id="didomi-notice-agree-button"]')
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
time.sleep(0.5)

#Metemos contraseña
password = driver.find_element(By.XPATH, '/html/body/div[2]/div/div/div[2]/div/form/div[2]/input')
password.send_keys('PC1_GR_ 4')
time.sleep(0.5)

#Le damos a iniciar sesion
boton_iniciar = driver.find_element(By.XPATH, '/html/body/div[2]/div/div/div[2]/div/form/div[3]/button')
boton_iniciar.click()
time.sleep(.7)

#Nos vamos a más
boton_mas = driver.find_element(By.XPATH, '//*[@id="content"]/header/div[2]/ul/li[5]/a')
boton_mas.click()
time.sleep(1.3)

#Nos vamos a jugadores
boton_jugadores = driver.find_element(By.XPATH, '//*[@id="content"]/div[4]/div[1]/button[2]')
boton_jugadores.click()
time.sleep(1)

button = True
while button:

    try:
        driver.find_element(By.CLASS_NAME, 'search-players-more')
        time.sleep(1)
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
    # regex_link = r"(https://mister\.mundodeportivo\.com)/players/(\d+)/(.+)"
    # link = re.sub(regex_link, r"\1/more#players/\2/\3", link_unmod)
    links_jugadores.append(link)

jugadores_info = []
csv_columns = ['ID', 'Jornada', 'Puntos', 'Nombre', 'Equipo', 'Posición', 'Valoración', 'Pases totales', 'Pases precisos', 'Balones en largo totales', 'Centros totales', 'Duelos aéreos perdidos', 'Duelos perdidos', 'Duelos ganados', 'Regateado', 'Regates totales', 'Regates completados', 'Tiros a puerta', 'Tiros bloqueados en ataque', 'Goles', 'Despejes totales', 'Intercepciones', 'Entradas totales', 'Faltas recibidas', 'Minutos jugados', 'Toques', 'Valoración', 'Posesiones perdidas', 'Goles esperados', 'Pases clave', 'MATCH_STAT_expectedAssists', 'Balones en largo precisos', 'Asistencias de gol', 'Pérdidas', 'Tiros fuera', 'Faltas cometidas', 'Duelos aéreos ganados', 'Tiros bloqueados en defensa', 'Centros precisos', 'Ocasiones claras falladas', 'Ocasiones creadas', 'Fueras de juego', 'Errores que llevan a disparo', 'Tiros al palo', 'Penaltis provocados', 'Despejes en la línea de gol', 'Despejes por alto', 'Paradas desde dentro del área', 'Paradas', 'Salidas totales', 'Salidas precisas', 'Goles evitados', 'Despejes con los puños', 'Entradas como último hombre', 'Errores que llevan a gol', 'Penaltis parados', '', 'Penaltis cometidos', 'Penaltis fallados']

for i, link in enumerate(links_jugadores):
    while i >= 21 and i <= 40:  # Si ya hemos procesado 20 enlaces, salimos del bucle
        driver.get(link)
        time.sleep(.3)
        # Información jugadores
        regex_id = r"/players/(\d+)/"
        id = int(re.search(regex_id, link).group(1))
        player_info = driver.find_element(By.CLASS_NAME, 'player-info').find_element(By.CLASS_NAME, 'left')
        player_name = f'{driver.find_element(By.CLASS_NAME, "name").text.strip()} {driver.find_element(By.CLASS_NAME, "surname").text.strip()}' if driver.find_element(By.CLASS_NAME, "name").text.strip() else driver.find_element(By.CLASS_NAME, "surname").text.strip()
        position_team = player_info.find_element(By.CLASS_NAME, 'team-position')
        team = position_team.find_element(By.TAG_NAME, 'a').get_attribute('data-title')
        posicion_numero = position_team.find_element(By.TAG_NAME, 'i').get_attribute('class')
        numero_posicion = posicion_numero.split(' ')[0].split('-')[1]
        posicion = posiciones.get(numero_posicion, "Desconocido")

        caja_jornadas = driver.find_element(By.CLASS_NAME, 'box-scores').find_elements(By.CLASS_NAME, 'btn-player-gw')
        jornadas = [c.find_element(By.CLASS_NAME, 'gw').text.strip() for c in reversed(caja_jornadas)] 

