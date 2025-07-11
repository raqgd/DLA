from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import TimeoutException, StaleElementReferenceException
from selenium.webdriver.common.action_chains import ActionChains
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
time.sleep(1)

#Le damos a equipo
boton_equipo = driver.find_element(By.XPATH, '//*[@id="content"]/header/div[2]/ul/li[3]/a')
boton_equipo.click()
time.sleep(2)

jugadores = []

csv_columns = ['Alineación', 'Media de puntos', 'Saldo', 'Deuda máxima', 'Jugadores']

# saldo_actual = driver.find_element(By.XPATH, '//*[@id="content"]/div[2]/div[5]/div/div[1]/div[2]').text.strip()
saldo_futuro = driver.find_element(By.CLASS_NAME, 'balance-real-future').text.strip()
deuda_maxima = driver.find_element(By.CLASS_NAME, 'balance-real-maxdebt').text.strip()

#Scroll until clickable

# Esperar a que el elemento sea visible
element = WebDriverWait(driver, 10).until(
    EC.visibility_of_element_located((By.XPATH, '//*[@id="content"]/div[4]/div[3]/div[2]/button[1]'))
)

# Hacer scroll hasta que el elemento sea visible
actions = ActionChains(driver)
actions.move_to_element(element).perform()

# Puedes realizar otras acciones con el elemento una vez que sea visible
alineacion = element.text.strip()  # Por ejemplo, hacer clic en el botón
#alineacion = driver.find_element(By.XPATH, '//*[@id="content"]/div[2]/div[3]/div[2]/button[1]').text.strip()
media = driver.find_element(By.CLASS_NAME, 'item-total').find_element(By.TAG_NAME, 'span').text.strip()


wait_caja_jugadores = WebDriverWait(driver, 10).until(
    EC.visibility_of_element_located((By.XPATH, '//*[@id="content"]/div[4]/div[4]/ul'))
)

#Creamos la expresion regular
regex = r'player-(\d+)'

#Declaramos una lista para guardar todos los ids de los jugadores de nuestra plantilla
idsPlantilla = []

caja_jugadores = wait_caja_jugadores.find_elements(By.TAG_NAME, 'li')
for jugador in caja_jugadores:
    id_jugador = jugador.get_attribute('id')

    match = re.search(regex, id_jugador)

    if match:
        # Extraer el id de jugador
        id_jugador = match.group(1)
        idsPlantilla.append(id_jugador)
    else:
        print("No se encontró un número de jugador en el ID:", id_jugador)

print(alineacion)
print(media)
print(saldo_futuro)
print(deuda_maxima)
print(idsPlantilla)

# Escribir la información en un archivo CSV
csv_file_path = 'plantilla_dataset.csv'
with open(csv_file_path, 'w', newline='', encoding='utf-8') as csv_file:
    writer = csv.DictWriter(csv_file, fieldnames=csv_columns)
    writer.writeheader()
    writer.writerow({'Alineación': alineacion, 'Media de puntos': media, 'Saldo': saldo_futuro, 'Deuda máxima': deuda_maxima})