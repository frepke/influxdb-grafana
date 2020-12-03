# Grafana InfluxDB

![](https://www.influxdata.com/wp-content/uploads/grafana-dashboard-influxdb-1.png)

[![Docker Pulls](https://img.shields.io/docker/pulls/frepke/influxdb-grafana.svg?style=plastic)](https://hub.docker.com/repository/docker/frepke/influxdb-grafana)
[![license](https://img.shields.io/github/license/frepke/influxdb-grafana.svg?style=plastic)](https://hub.docker.com/repository/docker/frepke/influxdb-grafana)

![Grafana](https://img.shields.io/badge/Grafana-7.3.4-orange?style=plastic)
![Influxdb](https://img.shields.io/badge/InfluxDB-1.8.3-orange?style=plastic)

<a href="https://www.buymeacoffee.com/frepke" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/purple_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

## Usage

Here are some example snippets to help you get started creating and running a container.

**docker**

```markdown
docker run -d \
  --name=influx-graf \
  -e PUID=1000 \
  -e PGID=1000 \
  -p 8086:8086 \ #influxdb HTTP API port
  -p 3000:3000 \ #grafana web interface
  -v path to data:/var/lib/influxdb \ #makes InfluxDB data and db's persistent
  -v path to data:/var/lib/grafana \ #makes Grafana data and db's persistent
  --restart unless-stopped \
  frepke/influxdb-grafana
```

**docker-compose**

Compatible with docker-compose v3 schemas.

```markdown
---
version: "3"
services:
  influx-graf:
    image: frepke/influxdb-grafana
    container_name: influx-graf:
    environment:
      - PUID=1000
      - PGID=1000
    volumes:
      - path to data:/var/lib/influxdb \ #makes InfluxDB data and db's persistent
      - path to data:/var/lib/grafana \ #makes Grafana data and db's persistent
    ports:
      - 8086:8086 \ #influxdb HTTP API port
      - 3000:3000 \ #grafana web interface
    restart: unless-stopped
```

**Grafana**

Open <http://localhost:3000>
```markdown
username: admin
password: admin
```
