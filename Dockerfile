# Image officielle n8n
FROM n8nio/n8n:latest

# Passer en root pour installer des outils
USER root

# Installer git et curl (utiles pour certains workflows)
RUN apk add --no-cache \
    git \
    curl \
    ca-certificates

# Retourner à l'utilisateur n8n pour la sécurité
USER node
WORKDIR /home/node

# Variables d'environnement pour la production
ENV NODE_ENV=production
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# Exposer le port 5678
EXPOSE 5678

# Commande de démarrage
CMD ["n8n", "start"]