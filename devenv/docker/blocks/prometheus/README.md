Benchmark for measuring overhead of running several Alertmanager containers in the same host.

For running the benchmark:
```
./run.sh
```

This will start a number of containers and scale the Alertmanager by 1 every 30 seconds.

For observing the resource consumption you can navigate to grafana container at http://localhost:3000 and select the `Cadvisor exporter` dashboard.