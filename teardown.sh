# install minio client
if ! command -v mc &> /dev/null
then
  wget https://dl.min.io/client/mc/release/linux-amd64/mc
  chmod +x mc
  sudo mv mc /usr/local/bin
fi

# remove tensorboard bucket
mc alias set minio http://localhost:9000 admin supersecret
mc rb --force minio/tensorboard/
mc alias remove minio

# stop tensorboard & minio servers
docker compose -f docker-compose.yaml down