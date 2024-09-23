from flask import Flask

app = Flask(__name__)

@app.route('/wider')
def home():
    return "<h1>Hola, esta es una imagen de python para el lab de Wider. Hecho por Juan Luis Sierra</h1>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)
