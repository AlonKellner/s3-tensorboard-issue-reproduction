docker run --rm -it \
  -e AWS_ACCESS_KEY_ID=admin \
  -e AWS_SECRET_ACCESS_KEY=supersecret \
  -e FSSPEC_S3_ENDPOINT_URL=http://host.docker.internal:9000 \
  -e FSSPEC_S3_KEY=admin \
  -e FSSPEC_S3_SECRET=supersecret \
  -e S3_ENDPOINT=http://host.docker.internal:9000 \
  -e PYTHONUNBUFFERED=1 \
  -e PYTHONPATH="/opt/project;/opt/project;/opt/.pycharm_helpers/pycharm_display;/usr/local/lib/python310.zip;/usr/local/lib/python3.10;/usr/local/lib/python3.10/lib-dynload;/usr/local/lib/python3.10/site-packages;/opt/.pycharm_helpers/pycharm_matplotlib_backend" \
  --entrypoint= \
  --add-host host.docker.internal:host-gateway \
  -v $PWD:/opt/project \
  --rm \
  s3-tensorboard /usr/local/bin/python3 /opt/project/add-experiment.py
