# Usamos una imagen base de Python
FROM python:3.9-slim

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos el archivo de requerimientos (si hubiera)
COPY requirements.txt requirements.txt

# Instalamos las dependencias necesarias (en este caso solo Flask)
RUN pip install -r requirements.txt

# Copiamos el resto de los archivos
COPY . .

# Exponemos el puerto 80
EXPOSE 80

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
