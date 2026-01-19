# Utilise une image PHP officielle avec Apache
FROM php:8.2-apache

# Copie tous les fichiers de votre projet dans le serveur Apache
COPY . /var/www/html/

# Correction : Utilisation du -R majuscule pour la récursivité
RUN chown -R www-data:www-data /var/www/html/

# Active le module de réécriture d'Apache (souvent utile pour le PHP moderne)
RUN a2enmod rewrite

# Expose le port 80
EXPOSE 80