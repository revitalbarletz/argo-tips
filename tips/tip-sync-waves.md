---
title: "Use Sync Waves to Control Resource Order"
tags: [sync, rollout, ordering]
submitted_by: "Revital Barletz"
---

💡 Argo CD lets you control the order in which resources are applied using `argocd.argoproj.io/sync-wave` annotations.

Use lower wave numbers for things like Secrets or CRDs, and higher numbers for Deployments that depend on them.
