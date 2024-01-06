import random
import time
from lightning.pytorch.loggers import TensorBoardLogger


logger = TensorBoardLogger("s3://tensorboard/", name="test-test")
amount = 100
seconds = 10
for i in range(amount):
    logger.log_metrics({"loss": random.random()}, step=i)
    time.sleep(seconds/amount)
logger.experiment.flush()
