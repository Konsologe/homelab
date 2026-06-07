# Konsologe Homelab

Build your own development platform with open-source software.

This repository contains the configuration files used throughout the **Konsologe Homelab** video series.

The goal of the project is to create a reproducible environment for learning and experimenting with:

- Docker
- Infrastructure as Code
- CI/CD
- DevOps
- Security Scanning
- Kubernetes / OpenShift
- Software Development Workflows

All infrastructure is built declaratively whenever possible using Docker Compose, environment variables and configuration files.

---

## YouTube Series

Follow the complete build process on YouTube:

https://www.youtube.com/@Konsologe

Playlist:

https://www.youtube.com/playlist?list=PLyc_9Vs-afxwvD_4HnyswaIizGPS9BMeN

---

## Current Components

### Core Infrastructure

- Docker Compose
- Traefik
- Pi-hole
- step-ca

### Development Platform

- Gitea
- Jenkins
- Nexus Repository

### Utilities

- Dozzle
- Homepage
- Wiki-Go
- Mailpit
- Portainer

---

## Homelab Architecture

```text
Pi-hole
    │
    ▼
Traefik
    │
    ▼
step-ca
    │
    ▼
─────────────────────────
Gitea
Jenkins
Nexus
Dozzle
Wiki-Go
Homepage
Mailpit
Portainer
─────────────────────────
```

---

## Project Principles

### Reproducibility

The setup should be reproducible from version-controlled files.

Preferred approaches:

- Docker Compose
- Environment Variables
- Configuration as Code
- Declarative Configuration

Avoid whenever possible:

- Manual Web UI Configuration
- Undocumented Click Paths
- Custom Scripts
- One-off Manual Changes

### Modularity

Services are split into dedicated compose files and combined using Docker Compose includes.

Example:

```text
core/
├── docker-compose.yaml
├── wiki-go/
├── step-ca/
└── ...
```

This keeps the setup maintainable and easy to extend.

---

## Roadmap

Completed:

- ✅ Dozzle
- ✅ Traefik
- ✅ Basic Authentication
- ✅ Mailpit
- ✅ Portainer
- ✅ Homepage
- ✅ Wiki-Go
- ✅ Pi-hole
- ✅ Gitea
- ✅ Nexus Repository
- ✅ Jenkins
- ✅ Automatic HTTPS with step-ca

Planned:

- 🔄 First CI Pipeline
- 🔄 Publish Maven Artifacts
- 🔄 Build and Push Docker Images
- 🔄 Dependency Security Scanning
- 🔄 Container Image Scanning
- 🔄 Automated Deployment
- 🔄 Java Development with Eclipse
- 🔄 Backup Automation
- 🔄 Kubernetes / OKD Introduction

---

## Hardware

### NAS

UGREEN NAS DXP2800

Currently hosts:

- Docker
- Traefik
- Pi-hole
- Gitea
- Jenkins
- Nexus
- step-ca
- Additional supporting services

### Future Platform

Ubuntu Server planned for:

- Kubernetes
- OKD / OpenShift experiments
- Larger CI/CD workloads

---

## Documentation

Documentation is gradually being moved into Wiki-Go and will later be published automatically on:

https://www.konsologe.de

---

## Contributing

Issues, ideas and suggestions are always welcome.

If you find the project useful, consider giving it a ⭐ on GitHub.

It helps others discover the project and supports the ongoing development of the homelab series.

---

## License

This project is published as open source.

See the license file for details.
