# Structure du Projet Yoga Postures App

## Organisation des dossiers

```
yoga-postures-app/
├── .gitignore
├── README.md
├── .env.example
├── start-backend.sh
├── start-frontend.sh
├── backend/
│   └── yoga-api/
│       ├── src/
│       │   ├── main.ts                     # Point d'entrée de l'application NestJS
│       │   ├── app.module.ts               # Module principal
│       │   ├── auth/                       # Module d'authentification
│       │   │   ├── auth.controller.ts      # Contrôleur d'authentification
│       │   │   ├── auth.service.ts         # Service d'authentification
│       │   │   └── dto/                    # Data Transfer Objects
│       │   ├── postures/                   # Module de gestion des postures
│       │   ├── favorites/                  # Module de gestion des favoris
│       │   ├── series/                     # Module de gestion des séries
│       │   ├── upload/                     # Module de gestion des uploads
│       │   └── prisma/                     # Service Prisma pour la BDD
│       ├── prisma/                         # Schéma Prisma, migrations
│       ├── package.json
│       └── tsconfig.json
└── frontend/
    └── yoga-app/
        ├── src/
        │   ├── screens/                    # Écrans de l'application
        │   │   ├── HomeScreen.tsx          # Écran d'accueil
        │   │   ├── PostureDetailScreen.tsx # Détails d'une posture
        │   │   ├── FavoritesScreen.tsx     # Écran des favoris
        │   │   └── ...
        │   ├── components/                 # Composants réutilisables
        │   ├── navigation/                 # Configuration de la navigation
        │   ├── services/                   # Services (API, auth, etc.)
        │   │   ├── api.ts                  # Configuration Axios
        │   │   └── auth.ts                 # Service d'authentification
        │   ├── contexts/                   # Contextes React
        │   └── types/                      # Types TypeScript
        ├── App.tsx                         # Point d'entrée de l'application
        ├── package.json
        ├── babel.config.js
        └── app.json                        # Configuration Expo
```

## Notes sur l'organisation

### Backend

Le backend est structuré selon les principes de NestJS, avec une organisation modulaire :

- Chaque fonctionnalité est isolée dans son propre module
- Les contrôleurs gèrent les requêtes HTTP
- Les services contiennent la logique métier
- Prisma est utilisé comme ORM pour interagir avec la base de données SQLite

### Frontend

Le frontend utilise React Native avec Expo et suit une organisation par fonctionnalité :

- Organisation par écrans et composants
- Séparation de la logique métier dans des services
- Utilisation de contextes pour la gestion d'état globale
- Navigation avec React Navigation

## Bonnes pratiques

- Utiliser des types TypeScript pour assurer la sécurité des types
- Documenter les composants et fonctions
- Suivre une convention de nommage cohérente
- Utiliser des DTOs pour valider les données entrantes dans l'API