# InfluxDB Grafana

![](https://pi2s.files.wordpress.com/2017/01/influxgrafanalogo.png)

![Influxdb](https://img.shields.io/badge/InfluxDB-1.8.10-orange)
![Grafana](https://img.shields.io/badge/Grafana-11.1.0_Enterprise-orange)
![Chronograf](https://img.shields.io/badge/Chronograf-1.10.0-orange)

![code-language](https://img.shields.io/github/languages/top/frepke/influxdb-grafana)
![code-size](https://img.shields.io/github/languages/code-size/frepke/influxdb-grafana)
![last-commit](https://img.shields.io/github/last-commit/frepke/influxdb-grafana/master)
[![ci](https://github.com/frepke/influxdb-grafana/actions/workflows/docker-image.yml/badge.svg)](https://github.com/frepke/influxdb-grafana/actions/workflows/docker-image.yml)

![AMD64](https://img.shields.io/badge/Architecture-AMD64-darkred)

![license](https://img.shields.io/github/license/Frepke/influxdb-grafana)

## Usage

Here are some example snippets to help you get started creating and running a container.

**docker**

```markdown
docker run -d \
  --name=influx-graf \
  -e PUID=1000 \
  -e PGID=1000 \
  -p 8086:8086 \ #influxdb HTTP API port
  -p 3000:3000 \ #grafana webinterface
  -p 8083:8083 \ #chronograf webinterface
  -v path to data:/var/lib/influxdb \ #makes InfluxDB data and db's persistent
  -v path to data:/var/lib/grafana \ #makes Grafana data and db's persistent
  --restart unless-stopped \
  ghcr.io/frepke/influxdb-grafana
```

**docker-compose**

Compatible with docker-compose v3 schemas.

```markdown
---
version: "3"
services:
  influx-graf:
    image: ghcr.io/frepke/influxdb-grafana
    container_name: influx-graf:
    environment:
      - PUID=1000
      - PGID=1000
    volumes:
      - path to data:/var/lib/influxdb \ #makes InfluxDB data and db's persistent
      - path to data:/var/lib/grafana \ #makes Grafana data and db's persistent
    ports:
      - 8086:8086 \ #influxdb HTTP API port
      - 3000:3000 \ #grafana webinterface
    restart: unless-stopped
```

**Grafana**

Open <http://localhost:3000>
```markdown
username: admin
password: admin
```



<a href="https://www.buymeacoffee.com/frepke"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=frepke&button_colour=5F7FFF&font_colour=ffffff&font_family=Cookie&outline_colour=000000&coffee_colour=FFDD00"></a>
