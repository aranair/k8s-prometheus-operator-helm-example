# Prometheus-Operator Example

- This is the main helm chart for deploying a sample monitoring stack:
  - Prometheus
  - Grafana
  - AlertManager

- Read about how it works in this blog post: https://aranair.github.io/posts/2019/08/01/prometheus-monitoring-in-kubernetes/

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

