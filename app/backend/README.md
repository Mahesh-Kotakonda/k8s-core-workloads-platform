# Backend Service

This backend service is a simple stateless API designed to demonstrate.
Kubernetes blue-green deployment patterns.

## Endpoints

### GET /api/message
Returns backend version, environment, and pod information.

### GET /health
Health check endpoint for Kubernetes probes.

## Environment Variables

- BACKEND_VERSION=blue | green
- ENVIRONMENT=dev | stage | prod

## Purpose

- Demonstrates blue-green deployments
- Stateless design
- Namespace awareness
- Easy to verify from frontend UI



