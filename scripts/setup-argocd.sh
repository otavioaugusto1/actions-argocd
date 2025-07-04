#!/bin/bash

# Instalar ArgoCD
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# Aguardar ArgoCD estar pronto
kubectl wait --for=condition=available --timeout=300s deployment/argocd-server -n argocd

# Expor ArgoCD via port-forward (executar em background)
kubectl port-forward svc/argocd-server -n argocd 8080:443 > /dev/null 2>&1 &

# Obter senha inicial do admin
echo "ArgoCD instalado com sucesso!"
echo "Acesse via: https://localhost:8080"
echo "Usuário: admin"
echo "Senha: $(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d)"