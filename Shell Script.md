# Shell Script
---

## **1. Understanding Shell Basics**
### **1.1 Shebang and Script Execution**
Every shell script should start with a shebang (`#!`) to specify the interpreter:
```sh
#!/bin/bash
echo "Hello, World!"
```
Make the script executable:
```sh
chmod +x script.sh
./script.sh
```

---

## **2. Variables and Data Handling**
### **2.1 Defining Variables**
```sh
name="DevOps"
echo "Hello, $name"
```
- Use `"$variable"` (double quotes) to prevent word splitting.
- Use `"${variable}"` when appending text:  
  ```sh
  file="${name}_log.txt"
  ```

### **2.2 Reading User Input**
```sh
read -p "Enter your name: " username
echo "Hello, $username"
```

### **2.3 Environment Variables**
```sh
export PATH=$PATH:/usr/local/bin
echo "Current PATH: $PATH"
```

---

## **3. Conditional Statements**
### **3.1 If-Else Conditions**
```sh
#!/bin/bash
if [ "$USER" == "root" ]; then
    echo "You are root!"
else
    echo "You are not root!"
fi
```

### **3.2 Checking File and Directory Existence**
```sh
if [ -f /etc/passwd ]; then
    echo "File exists."
fi
if [ -d /var/log ]; then
    echo "Directory exists."
fi
```

- `-f` → File exists  
- `-d` → Directory exists  
- `-x` → Executable file  
- `-s` → File is not empty  

---

## **4. Loops for Automation**
### **4.1 For Loop**
```sh
for user in alice bob charlie; do
    echo "Hello, $user"
done
```

### **4.2 While Loop**
```sh
counter=1
while [ $counter -le 5 ]; do
    echo "Counter: $counter"
    ((counter++))
done
```

### **4.3 Until Loop**
```sh
until [ "$answer" == "yes" ]; do
    read -p "Type 'yes' to continue: " answer
done
```

---

## **5. Functions and Modularization**
### **5.1 Defining Functions**
```sh
function greet() {
    echo "Hello, $1"
}
greet "DevOps Engineer"
```

### **5.2 Returning Values**
```sh
function add() {
    result=$(( $1 + $2 ))
    echo $result
}
sum=$(add 5 10)
echo "Sum: $sum"
```

---

## **6. Error Handling and Debugging**
### **6.1 Checking Exit Codes**
```sh
mkdir /root/test 2>/dev/null
if [ $? -ne 0 ]; then
    echo "Failed to create directory"
fi
```

### **6.2 Enabling Debugging**
Run the script with debugging enabled:
```sh
bash -x script.sh
```
Or add debugging inside the script:
```sh
set -x  # Enable debug mode
set +x  # Disable debug mode
```

---

## **7. File Handling and Log Management**
### **7.1 Redirecting Output**
```sh
echo "Logging this message" >> logfile.txt
```

### **7.2 Reading a File Line by Line**
```sh
while read -r line; do
    echo "Processing: $line"
done < file.txt
```

### **7.3 Writing Logs with Timestamps**
```sh
logfile="/var/log/myscript.log"
echo "$(date '+%Y-%m-%d %H:%M:%S') - Script executed" >> "$logfile"
```

---

## **8. Secure and Efficient Scripting**
### **8.1 Avoiding Hardcoded Paths**
Use `$(command -v <tool>)` instead of hardcoded paths:
```sh
BASH_PATH=$(command -v bash)
echo "Bash is at $BASH_PATH"
```

### **8.2 Handling Signals (Ctrl+C, Kill)**
Trap signals to prevent unintended termination:
```sh
trap "echo 'Script interrupted!'; exit 1" SIGINT SIGTERM
```

### **8.3 Using Secure Temporary Files**
```sh
tempfile=$(mktemp)
echo "Temporary file: $tempfile"
```

---

## **9. Scheduling Scripts with Cron Jobs**
### **9.1 Running a Script Every Day at Midnight**
```sh
crontab -e
# Add the following line:
0 0 * * * /path/to/script.sh
```

### **9.2 Running a Script on System Startup**
```sh
sudo nano /etc/rc.local
# Add:
/path/to/script.sh &
```

---

## **10. Real-World DevOps Use Cases**
### **10.1 Backup Automation**
```sh
#!/bin/bash
backup_dir="/backup"
mkdir -p "$backup_dir"
tar -czf "$backup_dir/home_$(date +%F).tar.gz" /home
```

### **10.2 Monitoring System Resources**
```sh
#!/bin/bash
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"
echo "Memory Usage:"
free -m
```

### **10.3 Deploying an Application**
```sh
#!/bin/bash
git pull origin main
docker-compose up -d --build
```

---

## **Final Best Practices**
✅ **Follow ShellCheck Guidelines**  
Use [`shellcheck`](https://www.shellcheck.net/) to lint scripts:
```sh
shellcheck script.sh
```

✅ **Use Meaningful Variable Names**  
Bad: `a=5`  
Good: `retry_count=5`

✅ **Document Your Scripts**  
```sh
# This script backs up the home directory
```

✅ **Use `set -e` to Exit on Errors**  
```sh
set -e  # Exit immediately if a command fails
```

