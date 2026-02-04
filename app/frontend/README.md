# Frontend Service

This frontend service is a stateless web UI designed to demonstrate
Kubernetes canary deployment patterns.

## Features

- Displays environment (dev/stage/prod)
- Displays frontend version (v1/v2)
- Calls backend API and displays backend version
- Designed for ingress-based access

## Environment Variables

- FRONTEND_VERSION=v1 | v2
- ENVIRONMENT=dev | stage | prod

## Purpose

- Canary deployments
- Visual verification of traffic splitting
- Works with blue-green backend
