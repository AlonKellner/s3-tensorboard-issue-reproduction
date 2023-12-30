import random
from lightning.pytorch.loggers import TensorBoardLogger


logger = TensorBoardLogger("s3://tensorboard/", name="test-test")
for i in range(100):
    logger.log_metrics({"loss": random.random()}, step=i)
