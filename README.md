# 🧘 Yoga Postures App

Application mobile et web pour explorer et gérer des postures de yoga, avec un frontend React Native/Expo et un backend NestJS.

## 📱 Fonctionnalités

- **Exploration de postures** : Parcourez une bibliothèque complète de postures de yoga
- **Recherche avancée** : Recherchez des postures par nom (en français, anglais, sanskrit)
- **Détails des postures** : Consultez les descriptions, images et vidéos de chaque posture
- **Gestion des favoris** : Ajoutez vos postures préférées à votre liste de favoris
- **Séries personnalisées** : Créez et partagez des séries de yoga
- **Multi-plateformes** : Fonctionne sur iOS, Android et Web via Expo

## 🏗️ Architecture

Le projet est structuré en deux parties principales :

### Backend (NestJS)

- `/backend/yoga-api` : API NestJS avec gestion d'authentification, stockage des postures, favoris et séries
- Base de données : SQLite via Prisma ORM
- Authentification : JWT
- Upload de fichiers : Support pour MinIO et stockage local

### Frontend (React Native/Expo)

- `/frontend/yoga-app` : Application React Native/Expo
- Navigation : React Navigation
- Gestion d'état : Context API
- Design responsive : Compatible Mobile et Web

## 🚀 Installation et démarrage

### Prérequis

- Node.js (v18 ou supérieur)
- npm ou yarn
- Expo CLI (pour le frontend)

### Installation du Backend

```bash
cd backend/yoga-api
npm install
```

### Configuration du Backend

Créez un fichier `.env` dans le dossier `backend/yoga-api` avec le contenu suivant :

```
DATABASE_URL="file:../dev.db"
JWT_SECRET="votre_secret_jwt"
```

### Démarrage du Backend

```bash
cd backend/yoga-api
npm run start:dev
```

L'API sera disponible sur `http://localhost:3000`

### Installation du Frontend

```bash
cd frontend/yoga-app
npm install
```

### Démarrage du Frontend

```bash
cd frontend/yoga-app
npx expo start
```

Suivez les instructions dans le terminal pour :
- Ouvrir sur Web : Appuyez sur `w`
- Ouvrir sur simulateur iOS : Appuyez sur `i`
- Ouvrir sur émulateur Android : Appuyez sur `a`
- Scanner le QR code avec l'app Expo Go sur votre téléphone

## 🔑 Accès de test

- Email : `test@example.com`
- Mot de passe : `password123`

## 📚 API Documentation

Une documentation Swagger est disponible à l'adresse `http://localhost:3000/api` lorsque le backend est en cours d'exécution.

Endpoints principaux :
- `/auth` : Authentification (register, login)
- `/postures` : CRUD pour les postures de yoga
- `/favorites` : Gestion des postures favorites
- `/series` : CRUD pour les séries de yoga
- `/upload` : Upload de fichiers (images, vidéos)

## 🧪 Développement

### Scripts pour faciliter le démarrage

Des scripts shell sont disponibles à la racine du projet pour simplifier le démarrage :

- `./start-backend.sh` : Démarre le serveur backend
- `./start-frontend.sh` : Démarre l'application frontend avec Expo

### Dépannage courant

- **Erreurs CORS** : Vérifiez que l'URL de l'API utilisée par le frontend est correcte et que CORS est activé côté backend
- **Problèmes d'authentification** : Assurez-vous que le JWT secret est correctement configuré
- **Erreurs de chargement d'images** : Vérifiez les chemins et les permissions d'accès aux fichiers
- **Port 3000 déjà utilisé** : Utilisez un autre port dans la configuration du backend

## 📄 Licence

[MIT](LICENSE)