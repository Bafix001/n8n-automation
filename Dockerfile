# Image officielle n8n
FROM n8nio/n8n:latest

# Variables d'environnement pour la production
ENV NODE_ENV=production
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# Exposer le port 5678
EXPOSE 5678

# Utiliser le point d'entrée par défaut de l'image n8n
# (pas de CMD personnalisé)