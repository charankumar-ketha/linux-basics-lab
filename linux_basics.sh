
#!/bin/bash
# ==============================================================================
# Script Name: linux_basics.sh
# Author: Ketha Charan Kumar
# Description: DevOps Automated Linux Basics Lab Execution & Verification
# ==============================================================================

echo "========================================================"
echo " Starting DevOps Linux Basics Automated Task Execution "
echo "========================================================"

# --- Task 1: Creating and Renaming Files/Directories ---
echo -e "\n[Task 1] Creating directory 'test_dir' and managing files..."
mkdir -p test_dir
touch test_dir/example.txt
echo "Created test_dir/example.txt"
mv test_dir/example.txt test_dir/renamed_example.txt
echo "Renamed example.txt -> test_dir/renamed_example.txt"
echo "Verification:"
ls -la test_dir/

# --- Task 2: Viewing File Contents ---
echo -e "\n[Task 2.1] Viewing entire /etc/passwd (first 5 lines shown for sanity):"
cat /etc/passwd | head -n 5

echo -e "\n[Task 2.2] Viewing FIRST 5 lines of /etc/passwd:"
head -n 5 /etc/passwd

echo -e "\n[Task 2.3] Viewing LAST 5 lines of /etc/passwd:"
tail -n 5 /etc/passwd

# --- Task 3: Searching for Patterns ---
echo -e "\n[Task 3] Grep lines containing 'root' in /etc/passwd:"
grep "root" /etc/passwd

# --- Task 4: Zipping and Unzipping ---
echo -e "\n[Task 4.1] Compressing 'test_dir' to 'test_dir.zip':"
zip -r test_dir.zip test_dir

echo -e "\n[Task 4.2] Extracting 'test_dir.zip' into 'unzipped_dir':"
mkdir -p unzipped_dir
unzip -o test_dir.zip -d unzipped_dir
echo "Verification of unzipped_dir:"
ls -la unzipped_dir/test_dir/

# --- Task 5: Downloading Files ---
echo -e "\n[Task 5] Downloading file using wget:"
wget -q -O sample.txt "https://raw.githubusercontent.com/torvalds/linux/master/README"
echo "Verification of downloaded file:"
ls -lh sample.txt
head -n 3 sample.txt

# --- Task 6: Changing Permissions ---
echo -e "\n[Task 6] Creating secure.txt and setting read-only for everyone (444):"
touch secure.txt
chmod 444 secure.txt
echo "Verification of permissions (must be -r--r--r--):"
ls -la secure.txt

# --- Task 7: Working with Environment Variables ---
echo -e "\n[Task 7] Setting and reading environment variable MY_VAR:"
export MY_VAR="Hello, Linux!"
echo "Verification of MY_VAR:"
echo "MY_VAR = $MY_VAR"

echo -e "\n========================================================"
echo " All tasks executed and verified successfully!          "
echo "========================================================"
