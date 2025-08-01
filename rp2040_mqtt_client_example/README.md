<<<<<<< HEAD
# firmware_client_mqtt

Este projeto é um firmware para Raspberry Pi Pico W que conecta a um broker MQTT e monitora o sub-tópico `/rack_inteligente/000001/door`.

## Funcionalidade
- Conecta ao Wi-Fi definido nas variáveis de compilação.
- Conecta ao broker MQTT definido nas variáveis de compilação.
- Inscreve-se no tópico `/rack_inteligente/000001/door`.
- Exibe/loga mensagens recebidas neste tópico.

## Como compilar
1. Ajuste as variáveis `WIFI_SSID`, `WIFI_PASSWORD`, `MQTT_BROKER`, `MQTT_USERNAME`, `MQTT_PASSWORD` no CMake ou via ambiente.
2. Compile usando o CMake conforme exemplo dos outros projetos.

```
mkdir build
cd build
cmake ..
make
```

## Observações
- Este projeto é apenas um cliente MQTT para monitorar o estado da porta.
- Use como base para integrações maiores.
=======
# rp2040_mqtt_client_example
Exemplo de uso do MQTT como cliente na RP2040
>>>>>>> 9b3e78a0759c787821a58cf57c6443a64415cbdf
