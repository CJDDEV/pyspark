#!/bin/sh

echo "[Inicio]"
SERVER=$1
TOPICO=$2

KAFKA="kafka-topics.sh --bootstrap-server $SERVER"

echo "[Criando o topico '$TOPICO' no Kafka...]"
$KAFKA --topic $TOPICO --create --partitions 1 --replication-factor 1

echo "[Listando os topicos existentes...]"
$KAFKA --list

echo "[Informacoes do topico '$TOPICO'...]"

$KAFKA --topic $TOPICO --describe

echo "[Criando o consumer do topico '$TOPICO' para checagem...]"
echo "[...Aguardando o envio...]"

kafka-console-consumer.sh --bootstrap-server $SERVER --topic $TOPICO 

