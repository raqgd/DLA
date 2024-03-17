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

#Le damos a equipo
boton_equipo = driver.find_element(By.XPATH, '//*[@id="content"]/header/div[2]/ul/li[3]/a')
boton_equipo.click()
time.sleep(1)

jugadores = []

csv_columns = ['Alineación', 'Media', 'Saldo actual', 'Deuda máxima']

alineacion = driver.find_element(By.XPATH, '//*[@id="turbo-content"]/div[1]/div[3]/div[2]/button[1]').text.strip()
media = driver.find_element(By.CLASS_NAME, 'item-total').find_element(By.TAG_NAME, 'span').text.strip()
saldos = driver.find_element(By.XPATH, '//*[@id="turbo-content"]/div[1]/div[5]/div')
saldo_actual = saldos.find_element(By.CLASS_NAME, 'balance-real-current').text.strip()
deuda_maxima = saldos.find_element(By.CLASS_NAME, 'balance-real-maxdebt').text.strip()

Plantilla = {'Alineación': alineacion, 'Media': media, 'Saldo actual': saldo_actual, 'Deuda máxima': deuda_maxima}

with open('plantilla.csv', 'w', newline='', encoding='utf-8') as csv_file:
    writer = csv.DictWriter(csv_file, fieldnames=csv_columns)
    writer.writeheader()
    writer.writerow(Plantilla)




print(alineacion)
print(media)
print(saldo_actual)
print(deuda_maxima)