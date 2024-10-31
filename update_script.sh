#!/bin/bash
##Mohammed ELABDALLAH
##31/09/2024
# Définir le fichier de log
LOGFILE="/var/log/update_script.log"

# Fonction pour écrire dans le fichier de log
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}

# Démarrer le processus de mise à jour
log "Démarrage du script de mise à jour."

# Mettre à jour le système et les applications
log "Mise à jour des listes de paquets..."
if sudo apt update -y >> "$LOGFILE" 2>&1; then
    log "Mise à jour des listes de paquets réussie."
else
    log "Échec de la mise à jour des listes de paquets."
fi

log "Mise à jour des paquets..."
if sudo apt upgrade -y >> "$LOGFILE" 2>&1; then
    log "Mise à jour des paquets réussie."
else
    log "Échec de la mise à jour des paquets."
fi

log "Mise à jour des paquets inutilisés..."
if sudo apt autoremove -y >> "$LOGFILE" 2>&1; then
    log "Mise à jour des paquets inutilisés réussie."
else
    log "Échec de la mise à jour des paquets inutilisés."
fi

log "Mise à jour terminée."
