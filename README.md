# 🏗️ Pro-Assistante Infrastructure

> **CODE ONLY** - Scripts, configs, docker-compose pour infrastructure Proxmox

## 📚 Documentation

**⚠️ Toute la documentation est dans Notion (source de vérité)**

- [📘 Méthodologie Infrastructure](https://notion.so)
- [🏗️ Index Infrastructure](https://notion.so)
- [📊 Services Infrastructure](https://notion.so)

## 🗂️ Structure

```
scripts/
  ├── backup/          # Scripts backup quotidiens
  ├── deploy/          # Scripts déploiement CTs/VMs
  └── monitoring/      # Scripts monitoring services

docker-compose/
  ├── ct870-filebrowser/     # FileBrowser + Authelia
  ├── ct810-meetily/         # Meetily + Scriberr
  └── ct820-rocketchat/      # Rocket.Chat

configs/
  ├── nginx/           # Configs Nginx
  ├── authelia/        # Configs Authelia SSO
  └── guacamole/       # Configs Guacamole

terraform/             # IaC modules (futur)
```

## 🚀 Usage

```bash
# Backup production
./scripts/backup/backup-prod.sh

# Déployer CT 870
./scripts/deploy/deploy-ct870.sh

# Monitoring services
./scripts/monitoring/check-services.sh
```

## 🔗 Liens

- **Notion** : Documentation complète infrastructure
- **Claude Projects** : Instructions opérationnelles
- **GitHub** : Code versionné (ici)

---

**Créé** : 23 Nov 2025  
**Maintenu par** : François Danaels
