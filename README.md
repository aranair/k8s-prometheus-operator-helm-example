# Cluster-Monitoring

- This is the main helm chart for deploying a sample monitoring stack:
  - Prometheus
  - Grafana
  - AlertManager
- This assumes that prometheus-operator (and its CRDs) have been deployed beforehand.

# Installation

```
helm dep build
helm install clustermon --namespace=monitoring --name=clustermon
```

# Adding / Updating Grafana Dashboards


1. Make changes to or create new dashboards in Grafana.
2. Export as JSON (Share Dashboard > Export > View JSON through the UI)
3. Copy JSON into clipboard
4. `./scripts/add_chart_from_clipboard.sh <name_of_dashboard>` (e.g. this-new-service)
5. Check that `this-new-service-dashboard.json` has been added into `./dashboards/*`

# Upgrading

`helm upgrade clustermon -f clustermon`

