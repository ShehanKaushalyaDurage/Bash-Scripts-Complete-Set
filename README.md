# 🧰 DevOps Bash Automation Toolkit

Welcome to the **DevOps Bash Automation Toolkit** 🚀
This repository contains a set of **production-style Bash shell scripts** for system monitoring, automation, Git workflow management, backup/restore, and log analysis. 

---

## 🐧 What is Bash?

**Bash** (Bourne Again Shell) is a command-line shell used in Linux and Unix systems. It allows you to:

* Execute commands interactively
* Automate repetitive tasks with scripts
* Control servers and systems via command line

In simple terms:

> Bash is a tool that lets you run commands and automate tasks on Linux.

---

## 📜 What is a Shell Script?

A **Shell Script** is a file that contains a series of Bash commands. Instead of typing commands one by one, you can run the script to execute multiple commands automatically.

Example:

```bash
#!/bin/bash
echo "Hello DevOps"
```

> Shell scripts = automated command sequences to manage tasks efficiently.

---

## 📂 Repository Contents

This repository includes four main Bash scripts:

### 1. Production System Health Monitor

* Monitors CPU, memory, and disk usage.
* Logs system metrics with timestamps.
* Raises alerts when thresholds are exceeded.
* Suitable for server health monitoring and automation.

### 2. Backup & Restore Automation

* Creates compressed backups of specified directories.
* Maintains timestamped backup files.
* Cleans up old backups based on retention policy.
* Supports restoring from backup.

### 3. Git Release Automation

* Prevents direct commits to `main` branch.
* Handles uncommitted changes and prompts for commit messages.
* Validates semantic versioning (`vX.Y.Z`).
* Tags releases and pushes branch & tags to remote.

### 4. Log Analyzer & Alert System

* Analyzes log files for ERROR, WARN, INFO counts.
* Identifies the most frequent error message.
* Raises alerts if error counts exceed threshold.
* Provides exit codes for automation tools.

---


Each script has its own README with detailed instructions.

