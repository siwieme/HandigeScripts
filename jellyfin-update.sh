#!/bin/bash

# Update package list
echo "Package list updaten..."
apt update -y

# Upgrade all installed packages
echo "Alle installed packages upgraden..."
apt full-upgrade -y

# Remove unnecessary packages
echo "Overbodige packages verwijderen..."
apt autoremove -y

# Clean up the local repository of retrieved package files
echo "Opkuisen lokale repositories van opgevraagde package files..."
apt clean -y
apt autoclean -y

echo "Systeem bijgewerkt en opgeschoond!"

echo "Nu Jellyfin heropstarten..."
systemctl restart jellyfin

echo "Klaar!"
