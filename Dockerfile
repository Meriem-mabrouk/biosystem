# Utilise une image PHP officielle avec Apache
FROM php:8.2-apache

# Copie tous les fichiers de votre projet dans le serveur Apache
COPY . /var/www/html/

# Donne les droits nécessaires
RUN chown -r www-data:www-data /var/www/html/

# Expose le port 80 (standard pour le Web)
EXPOSE 80