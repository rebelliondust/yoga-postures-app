#!/bin/bash

# Script pour démarrer le frontend React Native/Expo

echo "Démarrage du frontend Yoga App (React Native/Expo)..."

# Se positionner dans le répertoire du frontend
cd "$(dirname "$0")/frontend/yoga-app"

# Vérifier si node_modules existe, sinon installer les dépendances
if [ ! -d "node_modules" ]; then
  echo "Installation des dépendances frontend..."
  npm install
fi

# Démarrer l'application Expo
echo "Lancement de l'application Expo..."
npx expo start