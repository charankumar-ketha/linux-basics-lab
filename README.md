# DevOps Linux Basics Automated Lab & Execution Guide

**Student Name:** Ketha Charan Kumar  
**GitHub Repository:** [https://github.com/charankumar-ketha/linux-basics-lab](https://github.com/charankumar-ketha/linux-basics-lab)

---

## 📌 Project Overview
This repository contains the complete automated shell script, terminal execution logs, and generated artifacts demonstrating essential Linux CLI operations—including file system management, file inspection, pattern searching, compression/archiving, networking, permission handling, and environment variables.

---

## 🚀 Execution & Reproducibility

The automated test suite is implemented in `linux_basics.sh`. To execute and verify all tasks sequentially while logging terminal output:

```bash
# Grant execution permissions
chmod +x linux_basics.sh

# Execute script and generate real-time log output
./linux_basics.sh | tee execution_output.txt
## 🛠️ Tasks & Verification Summary

* **Task 1 (Directory & File Creation/Renaming):** Creates `test_dir`, touches `example.txt`, and renames it to `renamed_example.txt`. Verified via `ls -la test_dir/`.
* **Task 2 (Viewing File Contents):** Demonstrates `cat`, `head -n 5`, and `tail -n 5` operations on `/etc/passwd`.
* **Task 3 (Pattern Search):** Filters root user occurrences with `grep "root" /etc/passwd`.
* **Task 4 (Archiving & Extraction):** Compresses `test_dir` into `test_dir.zip` and unzips it into `unzipped_dir/`.
* **Task 5 (File Download):** Downloads remote kernel documentation using `wget` to `sample.txt`.
* **Task 6 (Permissions Management):** Initializes `secure.txt` and assigns read-only permissions for all (`chmod 444`). Verified via `ls -la secure.txt`.
* **Task 7 (Environment Variables):** Exports `MY_VAR="Hello, Linux!"` and prints value via `echo $MY_VAR`.

---

## 📁 Repository Structure
```text
.
├── execution_output.txt       # Verified execution output logs
├── linux_basics.sh            # Automated DevOps bash execution script
├── sample.txt                 # File downloaded via wget
├── secure.txt                 # Read-only permission verified file (-r--r--r--)
├── test_dir/                  # Managed lab directory
│   └── renamed_example.txt    # Renamed file artifact
├── test_dir.zip               # Compressed zip archive
└── unzipped_dir/              # Extracted archive directory
    └── test_dir/
        └── renamed_example.txt
## 📋 Verification Evidence Checklist

* [x] **Directory & Renaming:** Directory `test_dir/` created, file `example.txt` initialized and renamed to `renamed_example.txt` (`ls -la test_dir/`).
* [x] **Viewing Files:** Entire `/etc/passwd` viewed via `cat`, top 5 lines via `head -n 5`, and bottom 5 lines via `tail -n 5`.
* [x] **Pattern Searching:** Matched lines containing `root` in `/etc/passwd` using `grep "root"`.
* [x] **Archiving & Extraction:** Compressed to `test_dir.zip` and verified extracted contents inside `unzipped_dir/test_dir/`.
* [x] **File Download:** Executed `wget` and verified payload existence (`sample.txt`).
* [x] **Permissions:** Configured `secure.txt` to read-only for all classes (`chmod 444`), verified mode `-r--r--r--`.
* [x] **Environment Variables:** Exported `MY_VAR="Hello, Linux!"` and validated value in terminal via `echo $MY_VAR`.
* [x] **Reproducible DevOps Script:** Shell script `linux_basics.sh` executed cleanly with recorded proof in `execution_output.txt`.
