# COMP 3095 ICE1 — create mynetwork and start MongoDB + Mongo Express
if (-not (docker network ls --format "{{.Name}}" | Select-String -Pattern "^mynetwork$")) {
    docker network create mynetwork
}
docker compose up -d
docker network ls
docker ps --filter "name=comp3095-mongodb"
