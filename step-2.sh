# restart minio & tensorboard
docker compose -f docker-compose.yaml down
docker compose -f docker-compose.yaml up -d
# check tensorboard: http://localhost:6006
#   without `--reload_task process`: tensorboard will show the full 100 steps of the experiment
#   with `--reload_task process`: no logs appear in tensorboard