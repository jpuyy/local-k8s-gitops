## ArgoCD

https://argo-cd.readthedocs.io/en/stable/

### port forward svc and get admin/password
```
kubectl port-forward svc/argocd-server -n argocd 8080:443
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
```

open https://localhost:8080
