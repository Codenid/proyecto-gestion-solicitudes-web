# Kafka Local (Docker)

Infraestructura mínima de Kafka local lista para pruebas.

## 🚀 Uso

```bash
# 1. Levantar contenedores
docker compose --env-file .env up -d

# 2. Crear tópico
chmod +x create-topic.sh
./create-topic.sh

# 3. Acceder a UI
http://localhost:8080
```

## 🧪 Pruebas manuales

```bash
docker exec -it kafka bash
kafka-console-producer --broker-list localhost:9092 --topic casos
# escribir mensajes y presionar Enter

# en otra terminal
docker exec -it kafka bash
kafka-console-consumer --bootstrap-server localhost:9092 --topic casos --from-beginning
```

✅ Listo para conectar productores/consumidores.
