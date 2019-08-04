from flask import Flask
import socket


app = Flask(__name__)


@app.route('/')
def root():
    return 'Hello from {}\n'.format(socket.gethostname())


if __name__ == "__main__":
    app.run()
