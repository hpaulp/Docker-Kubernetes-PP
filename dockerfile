# Usa la imagen oficial de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos necesarios
COPY requirements.txt requirements.txt

# Instala las dependencias
RUN pip install -r requirements.txt
COPY . .

# Expone el puerto 5000 para la aplicación Flask
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]