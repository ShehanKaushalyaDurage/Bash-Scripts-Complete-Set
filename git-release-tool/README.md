#Git Release Automation (Bash)

A **safe, interactive Bash script** that automates the **Git release process** by enforcing branch rules, handling uncommitted changes, tagging releases, and pushing code and tags to the remote repository.

This script is ideal for **DevOps workflows**, **team-based Git practices**.

---

## What This Script Does

* Prevents **direct commits to the `main` branch**
* Detects **uncommitted changes** and commits them safely
* Enforces **semantic versioning** (`vX.Y.Z`)
* Creates an **annotated Git tag** for the release
* Pushes the branch and release tag to the remote repository

---

## Features

*  Branch protection (`main` is locked)
*  Interactive commit message prompt
*  Semantic version validation
*  Annotated release tags
*  Pushes code and tags automatically
*  Clear success and failure messages

---

## Project Structure

```
.
├── release.sh        # Git release automation script
└── README.md         # Documentation
```

---

## Prerequisites

* Git installed
* A Git repository with a remote named `origin`
* You must be on a **non-main branch** (e.g., `dev`, `release`, `feature/*`)

---

## How to Run

### 1️ Make the script executable

```bash
chmod +x release.sh
```

---

### 2️ Run the release script

```bash
./release.sh
```

---

## Script Workflow (Step-by-Step)

1. Detects the **current Git branch**
2. Stops execution if the branch is `main`
3. Checks for **uncommitted changes**
4. Prompts for a **commit message** (if needed)
5. Prompts for a **release version** (`vX.Y.Z`)
6. Validates the version format
7. Creates an **annotated Git tag**
8. Pushes the branch and the tag to `origin`

---

## Versioning Rules

The script enforces **semantic versioning**:

```
vMAJOR.MINOR.PATCH
```

Examples:

* ✅ `v1.0.0`
* ✅ `v2.3.4`
* ❌ `1.0.0`
* ❌ `v1.0`

---

##  Example Run

```text
Uncommitted changes detected
Enter commit message: Fix login validation
Enter release version (vX.Y.Z): v1.2.0
Release v1.2.0 completed
```

---

##  Exit Codes

| Exit Code | Meaning                                  |
| --------- | ---------------------------------------- |
| `0`       | Release completed successfully           |
| `1`       | Invalid branch, input, or version format |



Clean • Safe • Production-inspired Git automation
