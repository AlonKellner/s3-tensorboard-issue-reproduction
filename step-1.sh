# write the first experiment to minio
bash add-experiment.sh
# check minio: http://localhost:9001
#   the new experiment tfevent file should appear
# check tensorboard: http://localhost:6006
#   without `--reload_task process`: it does appear in tensorboard, but only a few steps, not all 100
#   with `--reload_task process`: no logs appear in tensorboard