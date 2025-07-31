# Generated Cmake Pico project file

cmake_minimum_required(VERSION 3.13)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Initialise pico_sdk from installed location
# (note this can come from environment, CMake cache etc)

# == DO NOT EDIT THE FOLLOWING LINES for the Raspberry Pi Pico VS Code Extension to work ==
if(WIN32)
    set(USERHOME $ENV{USERPROFILE})
else()
    set(USERHOME $ENV{HOME})
endif()
set(sdkVersion 2.1.1)
set(toolchainVersion 14_2_Rel1)
set(picotoolVersion 2.1.1)
set(picoVscode ${USERHOME}/.pico-sdk/cmake/pico-vscode.cmake)
if (EXISTS ${picoVscode})
    include(${picoVscode})
endif()
# ====================================================================================
set(PICO_BOARD pico_w CACHE STRING "Board type")

set(WIFI_SSID "$ENV{WIFI_SSID}")
set(WIFI_PASSWORD "$ENV{WIFI_PASSWORD}")
set(MQTT_BROKER "$ENV{MQTT_BROKER}")
set(MQTT_USERNAME "$ENV{MQTT_USERNAME}")
set(MQTT_PASSWORD "$ENV{MQTT_PASSWORD}")
set(MQTT_BASE_TOPIC "$ENV{MQTT_BASE_TOPIC}")

message(STATUS "WIFI_SSID: ${WIFI_SSID}")
message(STATUS "WIFI_PASSWORD: ${WIFI_PASSWORD}")
message(STATUS "MQTT_USERNAME: ${MQTT_USERNAME}")
message(STATUS "MQTT_PASSWORD: ${MQTT_PASSWORD}")
message(STATUS "MQTT_BROKER: ${MQTT_BROKER}")
message(STATUS "MQTT_BASE_TOPIC: ${MQTT_BASE_TOPIC}")

# Define the name of an MQTT broker/server to enable this example
set(WIFI_SSID "${WIFI_SSID}" CACHE INTERNAL "Wi-Fi SSID for examples")
set(WIFI_PASSWORD "${WIFI_PASSWORD}" CACHE INTERNAL "Wi-Fi password for examples")
set(MQTT_BROKER "${MQTT_BROKER}" CACHE INTERNAL "MQTT broker for examples")
set(MQTT_USERNAME "${MQTT_USERNAME}" CACHE INTERNAL "MQTT username for examples")
set(MQTT_PASSWORD "${MQTT_PASSWORD}" CACHE INTERNAL "MQTT password for examples")
set(MQTT_BASE_TOPIC "${MQTT_BASE_TOPIC}" CACHE INTERNAL "MQTT base topic for examples")


# Pull in Raspberry Pi Pico SDK (must be before project)
include(pico_sdk_import.cmake)

project(rp2040_mqtt_server_example C CXX ASM)

# Initialise the Raspberry Pi Pico SDK
pico_sdk_init()

# Add executable. Default name is the project name, version 0.1

add_executable(rp2040_mqtt_server_example main.c )

pico_set_program_name(rp2040_mqtt_server_example "rp2040_mqtt_server_example")
pico_set_program_version(rp2040_mqtt_server_example "0.1")

# Modify the below lines to enable/disable output over UART/USB
pico_enable_stdio_uart(rp2040_mqtt_server_example 1)
pico_enable_stdio_usb(rp2040_mqtt_server_example 1)

# Add the standard library to the build
target_link_libraries(rp2040_mqtt_server_example
        pico_stdlib
        hardware_adc
        )

# Add the standard include files to the build
target_include_directories(rp2040_mqtt_server_example PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}
)

# Add any user requested libraries
target_link_libraries(rp2040_mqtt_server_example 
        pico_cyw43_arch_lwip_threadsafe_background
        pico_lwip_mqtt
        )

target_compile_definitions(rp2040_mqtt_server_example PRIVATE
        WIFI_SSID=\"${WIFI_SSID}\"
        WIFI_PASSWORD=\"${WIFI_PASSWORD}\"
        MQTT_BROKER=\"${MQTT_BROKER}\"
        MQTT_USERNAME=\"${MQTT_USERNAME}\"
        MQTT_PASSWORD=\"${MQTT_PASSWORD}\"
        MQTT_BASE_TOPIC=\"${MQTT_BASE_TOPIC}\"
        )  

pico_add_extra_outputs(rp2040_mqtt_server_example)

