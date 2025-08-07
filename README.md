# Unbound DNS Cluster with HAProxy Load Balancer and Monitoring

This project sets up a highly available and load-balanced DNS resolver infrastructure using Unbound and HAProxy, with full graphical monitoring via Grafana and Prometheus.

## ✨ Features

- 🚀 High-performance Unbound DNS resolver cluster (4 nodes)
- 🎯 Load balancing via HAProxy (TCP + UDP)
- 📊 Real-time metrics with Prometheus and Grafana
- 🔐 IPv6 and DNSSEC-ready configuration
- 🐳 Optional Docker-based deployment

## 📁 Project Structure

```
dns-cluster-project/
├── README.md
├── unbound/
│   ├── unbound.conf
│   └── exporter_script.sh
├── haproxy/
│   └── haproxy.cfg
├── monitoring/
│   ├── prometheus.yml
│   ├── grafana-dashboards/
│   └── exporters/
│       └── unbound_exporter (external)
├── docker-compose.yml  # optional
```

## 🧠 Unbound Configuration

Minimal secure configuration with remote control and statistics enabled for monitoring.

## 🧠 HAProxy Configuration

Load balances DNS over TCP and UDP to the Unbound nodes, with optional web-based stats panel.

## 📊 Monitoring

- Prometheus scrapes metrics from Unbound and HAProxy
- Grafana dashboards visualize QPS, latency, cache hitrate, etc.

## 🛠 Requirements

- Linux VMs (5 total: 4 Unbound + 1 HAProxy)
- Prometheus + Grafana stack
- (Optional) Docker or Docker Compose

## 🧪 Testing

Use `dig` or `nslookup`:
```bash
dig @172.16.33.2 google.com
nslookup google.com 172.16.33.2
```

## 📌 Author

Made by MD SHORIFUL ISLAM for real-world and ISP-level DNS performance projects.