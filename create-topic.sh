#!/bin/bash
set -e
TOPIC=${KAFKA_TOPIC:-casos}
docker exec kafka kafka-topics --create \  --topic "$TOPIC" \  --partitions 1 \  --replication-factor 1 \  --if-not-exists \  --bootstrap-server localhost:9092
echo "✅ Tópico '$TOPIC' creado o ya existe."
