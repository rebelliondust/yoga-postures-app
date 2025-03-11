#!/bin/bash

# Script pour démarrer le backend NestJS

echo "Démarrage du backend Yoga API (NestJS)..."

# Se positionner dans le répertoire du backend
cd "$(dirname "$0")/backend/yoga-api"

# Vérifier si node_modules existe, sinon installer les dépendances
if [ ! -d "node_modules" ]; then
  echo "Installation des dépendances backend..."
  npm install
fi

# Démarrer le serveur backend
echo "Lancement du serveur backend sur http://localhost:3000"
npm run start:dev