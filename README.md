# actions-argocd
Criação de um projeto CICD utilizando Github Actions, ArgoCD e k8s no Kind (Kubernetes em Docker).

## Como usar

* Fork este repositório
* Clone para seu ambiente local
* Configure os secrets no GitHub
* Execute os scripts de setup
* Faça push de uma alteração no código
* Observe o pipeline automatizado:

** GitHub Actions buildar e fazer push da imagem
** ArgoCD detectar mudanças e fazer deploy



## Monitoramento

* ArgoCD UI: https://localhost:8080
* Aplicação: http://gitops-demo.local (adicione ao /etc/hosts)
* Logs: kubectl logs -f deployment/gitops-demo-app -n gitops-demo
