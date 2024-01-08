#!/bin/bash

# Função para gerar status randomicamente
function gerar_status() {
    if [ $((RANDOM % 2)) -eq 0 ]; then
        echo "UP!"
    else
        echo "DOWN!"
    fi
}

# Obter timestamp atual
timestamp=$(date +"%Y-%m-%d %H:%M:%S")

# Gerar status para os serviços
redis_status=$(gerar_status)
kafka_status=$(gerar_status)
tomcat_uap_status=$(gerar_status)
tomcat_uip_status=$(gerar_status)
hes_status=$(gerar_status)
ua_status=$(gerar_status)
dp_status=$(gerar_status)
nms_status=$(gerar_status)
rabbitmq_status=$(gerar_status)

# Exibir resultados na tela
echo "Timestamp: $timestamp"
echo "REDIS Status: $redis_status"
echo "KAFKA Status: $kafka_status"
echo "TOMCAT UAP Status: $tomcat_uap_status"
echo "TOMCAT UIP Status: $tomcat_uip_status"
echo "HES Status: $hes_status"
echo "UA Status: $ua_status"
echo "DP Status: $dp_status"
echo "NMS Status: $nms_status"
echo "RABBIT MQ Status: $rabbitmq_status"
