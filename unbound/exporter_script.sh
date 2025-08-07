#!/bin/bash
# Simple exporter script for Prometheus
unbound-control stats_noreset | sed 's/=/ /'