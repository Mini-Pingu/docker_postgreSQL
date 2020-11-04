docker run -p 5432:5432 -d \
  -e POSTGRES_USER="pguser" \
  -e POSTGRES_PASSWORD="123" \
  -e POSTGRES_DB="demo" \
  -v ${PWD}/pg-data:/var/lib/postgresql/data \
  --name demo \
  postgres

echo "========"

docker ps -a
