#!/bin/bash
# Backup production quotidien - Services critiques Pro-Assistante
# Date: 23 Nov 2025
# Usage: ./backup-prod.sh

set -e

LOG_FILE="/var/log/backup-prod.log"
BACKUP_DIR="/var/lib/vz/dump"

# Services CRITICAL à backup
VMS=(201 202 820)  # Alexandra, Francia, Rocket.Chat
CTS=(870 810 860)  # FileBrowser, Meetily, n8n

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

log "🚀 Début backup production"

# Backup VMs
for vm in "${VMS[@]}"; do
    log "📦 Backup VM $vm..."
    vzdump "$vm" --compress zstd --storage local || log "❌ Erreur VM $vm"
done

# Backup CTs
for ct in "${CTS[@]}"; do
    log "📦 Backup CT $ct..."
    vzdump "$ct" --compress zstd --storage local || log "❌ Erreur CT $ct"
done

log "✅ Backup production terminé"

# Cleanup vieux backups (> 7 jours)
find "$BACKUP_DIR" -name "vzdump-*.zst" -mtime +7 -delete

log "🧹 Cleanup backups > 7j OK"
