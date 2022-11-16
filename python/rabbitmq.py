"""
Example of RabbitMQ usage
http://snakeproject.ru/rubric/article.php?art=%D0%BA%D1%8C%D0%B9_22072022

asyncio rabbitmq
https://github.com/mosquito/aiormq/
https://github.com/mosquito/aio-pika
"""
import pika


def send():
    """This function sends 'Hello world' message in 'hello' queue"""
    print('send...')
    with pika.BlockingConnection(pika.ConnectionParameters('localhost')) as connection:
        channel = connection.channel()
        channel.queue_declare(queue='hello')
        channel.basic_publish(
            exchange='', routing_key='hello', body='Hello World!')
        print(" [x] Sent 'Hello World!'")


def receive():
    """This function receives a message from 'hello' queue"""
    print('receive...')
    with pika.BlockingConnection(pika.ConnectionParameters('localhost')) as connection:
        channel = connection.channel()
        channel.queue_declare(queue='hello')

        def callback(_channel, _method, _properties, body):
            print(f' [x] Received {body}')
        channel.basic_consume(
            queue='hello', on_message_callback=callback, auto_ack=True)
        print(' [*] Waiting for messages, press CTRL+C to exit')
        try:
            channel.start_consuming()
        except KeyboardInterrupt:
            print('stop...')


if __name__ == '__main__':
    print('start')
    send()
    receive()
    print('done')
