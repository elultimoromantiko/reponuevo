# 1. Imagen base oficial de Python ligera solicitada
FROM python:3.11-slim

# 2. Definir el directorio de trabajo interno
WORKDIR /app

# 3. Copiar e instalar dependencias aprovechando la caché
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copiar el código de la aplicación
COPY app/ /app/

# 5. Exponer el puerto nativo de Flask
EXPOSE 5000

# 6. Comando para ejecutar la aplicación
CMD ["python", "app.py"]