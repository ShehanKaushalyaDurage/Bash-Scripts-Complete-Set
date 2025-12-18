# 🗄️ Backup & Restore Automation (Bash)

A simple **production-style Bash script** to automate **backup and restore operations** with logging and backup retention.

This project is suitable for **DevOps practice**, **Linux automation**.

---

## 📌 Features

* 📦 Create compressed backups using `tar`
* 🕒 Timestamped backup files (no overwrites)
* 🧹 Automatic cleanup of old backups (retention policy)
* 🔄 Restore from any backup file
* 📝 Centralized logging with timestamps
* ✅ Simple and safe CLI interface

---

## 📁 Project Structure

```
.
├── backup.sh           # Main backup & restore script
├── data/               # Source directory to back up
├── backups/            # Backup destination (auto-created)
└── backup.log          # Log file (auto-created)
```

---

## ⚙️ Configuration

The following variables are defined at the top of the script and can be modified as needed:

```bash
BACKUP_DIR="./backups"     # Where backups are stored
SOURCE_DIR="./data"        # Directory to back up
LOG_FILE="./backup.log"    # Log file path
RETENTION_DAYS=7             # Number of days to keep backups
```

---

## ▶️ How to Run

### 1️⃣ Make the script executable

```bash
chmod +x backup.sh
```

---

### 2️⃣ Create a Backup

```bash
./backup.sh backup
```

📌 What this does:

* Creates a compressed `.tar.gz` archive of the `data/` directory
* Stores it in `backups/` with a timestamped filename
* Deletes backups older than the configured retention period
* Logs all actions to `backup.log`

Example backup file:

```
backups/backup_2025-12-18_12-40.tar.gz
```

---

### 3️⃣ Restore from a Backup

```bash
./backup.sh restore backups/backup_YYYY-MM-DD_HH-MM.tar.gz
```

📌 What this does:

* Verifies the backup file exists
* Extracts the contents to the current directory
* Logs the restore operation

⚠️ **Note:** The restore extracts files into the directory where the command is executed.

---

## 📝 Logging

All operations are logged with timestamps.

Example log entries:

```
2025-12-18 12:40:01 | Backup created: ./backups/backup_2025-12-18_12-40.tar.gz
2025-12-18 12:40:01 | Old backups cleaned
2025-12-18 13:05:22 | Restore completed from backups/backup_2025-12-18_12-40.tar.gz
```

---

## ❌ Invalid Usage

If incorrect arguments are provided, the script displays usage instructions:

```bash
Usage: ./backup.sh {backup|restore <file>}
```

---

## 🧠 Exit Codes

| Exit Code | Meaning                          |
| --------- | -------------------------------- |
| `0`       | Success                          |
| `1`       | Invalid usage or restore failure |

---


✅ Clean, simple, and production-inspired Bash automation.
