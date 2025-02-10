# Utilisation de l'image Python officielle
FROM python:3.9

# Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copier les fichiers de l'application dans le conteneur
COPY . .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port 5000
EXPOSE 5000

# Commande pour exécuter l'application
CMD ["python", "app.py"]
