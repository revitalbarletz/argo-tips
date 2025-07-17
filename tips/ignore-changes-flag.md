# Using the `ignoreDifferences` Flag in Argo CD

When managing applications, some Kubernetes resources or fields might change outside of Git (e.g., auto-generated fields or secrets). To prevent Argo CD from constantly trying to revert these changes, you can use the `ignoreDifferences` flag in your Application manifest.

Example snippet:

```yaml
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: my-app
spec:
  source:
    repoURL: https://github.com/myorg/myapp.git
    path: manifests
  destination:
    server: https://kubernetes.default.svc
    namespace: default
  ignoreDifferences:
  - group: apps
    kind: Deployment
    jsonPointers:
    - /spec/template/spec/containers/0/image
  - group: ""
    kind: ConfigMap
    jsonPointers:
    - /data/password
