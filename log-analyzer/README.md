# 📜 Log Analyzer & Alert System (Bash)

A **lightweight Bash-based log analysis tool** that scans a log file, summarizes log levels (ERROR, WARN, INFO), identifies the most frequent error, and raises alerts when error thresholds are exceeded.

This script is ideal for **DevOps practice**, **Linux log analysis**.

---

## 📌 Script Overview

The Log Analyzer processes a given log file and provides:

* Total number of log lines
* Count of **ERROR**, **WARN**, and **INFO** messages
* The most frequent error message
* An alert mechanism based on an error threshold

---

## ✨ Features

* 📊 Log statistics summary
* 🔍 Case-insensitive log level detection
* 🧠 Identifies the most common error
* 🚨 Threshold-based alerting
* ✅ Meaningful exit codes for automation

---

## 📁 Project Structure

```
.
├── log_analyzer.sh     # Log analyzer & alert script
├── application.log    # Sample log file (input)
└── README.md          # Documentation
```

---

## ⚙️ Configuration

You can configure the error alert threshold inside the script:

```bash
ERROR_THRESHOLD=5   # Alert if ERROR count exceeds this value
```

---

## ▶️ How to Run

### 1️⃣ Make the script executable

```bash
chmod +x log_analyzer.sh
```

---

### 2️⃣ Run the analyzer

```bash
./log_analyzer.sh application.log
```

📌 The log file path is passed as the **first argument** to the script.

---

## 🧾 Example Output

```
Total lines: 1200
Errors: 8
Warnings: 14
Info: 1178
Top Error:    5 Database connection failed
🚨 ALERT: Error threshold exceeded
```

---

## 🚦 Exit Codes

| Exit Code | Meaning                                         |
| --------- | ----------------------------------------------- |
| `0`       | Log analysis successful, threshold not exceeded |
| `1`       | Log file not found or invalid input             |
| `2`       | Error threshold exceeded                        |

These exit codes make the script suitable for:

* Cron jobs
* CI/CD pipelines
* Monitoring and alerting systems

✅ Simple • Fast • Automation-ready log analysis
