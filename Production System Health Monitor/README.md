# 🖥️ Production System Health Monitor (Bash)

A **production-style Bash monitoring script** that checks **CPU, Memory, and Disk usage**, logs system health metrics, and raises alerts when defined thresholds are exceeded.

This project is designed for **Linux automation**, **DevOps practice**.

---

## 📌 Script Overview

* **Author:** Shehan Kaushalya
* **Description:** Production System Health Monitor
* **Created On:** 18/12/2025

The script collects real-time system metrics and writes them to a log file with timestamps. It exits with meaningful status codes, making it suitable for automation and monitoring tools.

---

## ✨ Features

* 📊 Monitors **CPU usage**
* 🧠 Monitors **Memory usage**
* 💽 Monitors **Disk usage** (root partition `/`)
* 🚨 Configurable threshold-based alerts
* 📝 Timestamped logging to a log file
* ✅ Proper exit codes for automation tools

---

## 📁 Project Structure

```
.
├── system_health_monitor.sh   # Main monitoring script
├── system_health.log          # Log file (auto-created)
└── README.md                  # Project documentation
```

---

## ⚙️ Configuration

You can modify the threshold values at the top of the script:

```bash
CPU_THRESHOLD=80     # Alert if CPU usage exceeds 80%
MEM_THRESHOLD=75     # Alert if Memory usage exceeds 75%
DISK_THRESHOLD=85    # Alert if Disk usage exceeds 85%
LOG_FILE="./system_health.log"
```

---

## ▶️ How to Run

### 1️⃣ Make the script executable

```bash
chmod +x system_health_monitor.sh
```

---

### 2️⃣ Run the script

```bash
./system_health_monitor.sh
```

The script will:

* Display a header on the terminal
* Capture CPU, Memory, and Disk usage
* Log all metrics and alerts to `system_health.log`

---

## 📝 Logging

All metrics are logged with timestamps.

Example log output:

```
2025-12-18 14:10:05 | CPU Usage: 42%
2025-12-18 14:10:05 | Memory Usage: 63%
2025-12-18 14:10:05 | Disk Usage: 71%
```

If thresholds are exceeded:

```
2025-12-18 14:12:01 | ALERT: High CPU usage
```

---

## 🚦 Exit Codes

| Exit Code | Meaning                         |
| --------- | ------------------------------- |
| `0`       | System health is normal         |
| `2`       | One or more thresholds exceeded |

These exit codes make the script suitable for:

* Cron jobs
* CI/CD pipelines
* Monitoring tools (Nagios, Zabbix, etc.)

---

## ⏱️ Automation with Cron (Optional)

Run the health monitor every 5 minutes:

```bash
*/5 * * * * /path/to/system_health_monitor.sh
```


✅ Clean • Simple • Production-inspired Bash monitoring
