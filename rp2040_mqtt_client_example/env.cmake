# Variáveis do .env
message(STATUS "Arquivo env.cmake carregado com sucesso.")
set(ENV{WIFI_SSID} "ArvoreDosSaberes")
set(ENV{WIFI_PASSWORD} "Arduino2022")
set(ENV{MQTT_BROKER} "broker.hivemq.com")
set(ENV{MQTT_BASE_TOPIC} "rack_inteligente")
set(ENV{MQTT_RACK_NUMBER} "1")
message(STATUS "Variáveis do .env carregadas com sucesso.")