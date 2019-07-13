import logging
# from PIL import Image
from lambda_packages import lambda_packages

logger = logging.getLogger()
logger.setLevel(logging.INFO)

logger.info('Loading function')
print(lambda_packages['psycopg2'])

def lambda_handler(event, context):
    logger.info(event)
    output = {'purpose': 'Hello World-2'}
    return output