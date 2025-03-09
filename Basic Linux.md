# Basic Linux Command

## **1. Basic File and Directory Management**
### **1.1 List Files and Directories**
- `ls` → List files in a directory  
  ```sh
  ls -la  # List all files (including hidden) with details
  ```

### **1.2 Change Directory**
- `cd` → Change working directory  
  ```sh
  cd /var/log  # Navigate to logs folder
  ```

### **1.3 Print Working Directory**
- `pwd` → Show current directory  
  ```sh
  pwd
  ```

### **1.4 Create and Remove Directories**
- `mkdir` → Create a new directory  
  ```sh
  mkdir /tmp/testdir
  ```
- `rmdir` → Remove an empty directory  
  ```sh
  rmdir /tmp/testdir
  ```

### **1.5 Copy, Move, and Remove Files**
- `cp` → Copy files  
  ```sh
  cp file1.txt /backup/
  ```
- `mv` → Move or rename files  
  ```sh
  mv oldname.txt newname.txt
  ```
- `rm` → Remove files  
  ```sh
  rm -rf /tmp/testdir
  ```

---

## **2. File Content and Manipulation**
### **2.1 View File Contents**
- `cat` → Display file content  
  ```sh
  cat /etc/passwd
  ```
- `less` → View file page by page  
  ```sh
  less /var/log/syslog
  ```
- `tail` → View last lines of a file  
  ```sh
  tail -f /var/log/syslog
  ```

### **2.2 Search in Files**
- `grep` → Search for patterns in files  
  ```sh
  grep "error" /var/log/syslog
  ```

### **2.3 Count Words, Lines, Characters**
- `wc` → Count lines, words, characters in a file  
  ```sh
  wc -l /var/log/syslog
  ```

---

## **3. User and Permission Management**
### **3.1 User and Group Management**
- `whoami` → Show current user  
  ```sh
  whoami
  ```
- `id` → Show user ID and group  
  ```sh
  id
  ```
- `groups` → List groups the user belongs to  
  ```sh
  groups
  ```
- `adduser` / `useradd` → Add a new user  
  ```sh
  sudo adduser devopsuser
  ```

### **3.2 File Permissions**
- `chmod` → Change file permissions  
  ```sh
  chmod 755 script.sh
  ```
- `chown` → Change file owner  
  ```sh
  sudo chown user:group file.txt
  ```
- `chgrp` → Change group ownership  
  ```sh
  sudo chgrp devops file.txt
  ```

---

## **4. Process and Job Control**
### **4.1 Process Management**
- `ps` → Show running processes  
  ```sh
  ps aux | grep apache
  ```
- `top` → Real-time system monitoring  
  ```sh
  top
  ```
- `htop` → Enhanced process viewer (if installed)  
  ```sh
  htop
  ```
- `kill` → Terminate a process  
  ```sh
  kill -9 1234  # Replace 1234 with PID
  ```

### **4.2 Background Jobs**
- `&` → Run process in background  
  ```sh
  ping google.com &  
  ```
- `jobs` → Show background jobs  
  ```sh
  jobs
  ```
- `fg` → Bring background job to foreground  
  ```sh
  fg %1  # Resume job number 1
  ```

---

## **5. Networking Commands**
### **5.1 Check Network Configuration**
- `ifconfig` / `ip addr show` → Show network interfaces  
  ```sh
  ip addr show
  ```

### **5.2 Test Connectivity**
- `ping` → Check if a host is reachable  
  ```sh
  ping google.com
  ```
- `traceroute` → Trace route to a host  
  ```sh
  traceroute google.com
  ```

### **5.3 Check Open Ports**
- `netstat` / `ss` → Show open ports  
  ```sh
  netstat -tulnp
  ```
  ```sh
  ss -tulnp
  ```

### **5.4 Network Troubleshooting**
- `curl` → Fetch a web page  
  ```sh
  curl -I https://google.com
  ```
- `wget` → Download a file  
  ```sh
  wget https://example.com/file.tar.gz
  ```

---

## **6. Package Management**
### **6.1 Install and Remove Packages**
- `apt` (Debian/Ubuntu)  
  ```sh
  sudo apt update && sudo apt install nginx
  ```
- `yum` (RHEL/CentOS)  
  ```sh
  sudo yum install httpd
  ```
- `dnf` (Fedora)  
  ```sh
  sudo dnf install nginx
  ```

---

## **7. System Monitoring and Logs**
### **7.1 Check System Resource Usage**
- `df -h` → Show disk space  
  ```sh
  df -h
  ```
- `du -sh` → Show directory size  
  ```sh
  du -sh /var/log
  ```
- `free -m` → Show memory usage  
  ```sh
  free -m
  ```

### **7.2 Check System Logs**
- `journalctl` → View system logs  
  ```sh
  journalctl -xe
  ```
- `dmesg` → View boot logs  
  ```sh
  dmesg | tail -50
  ```

---

## **8. DevOps-Specific Commands**
### **8.1 Docker Commands**
- `docker ps` → List running containers  
  ```sh
  docker ps
  ```
- `docker images` → List Docker images  
  ```sh
  docker images
  ```
- `docker logs` → View container logs  
  ```sh
  docker logs mycontainer
  ```

### **8.2 Kubernetes Commands**
- `kubectl get pods` → List Kubernetes pods  
  ```sh
  kubectl get pods -A
  ```
- `kubectl logs` → View pod logs  
  ```sh
  kubectl logs mypod
  ```

### **8.3 Git Commands for DevOps**
- `git clone` → Clone a repository  
  ```sh
  git clone https://github.com/user/repo.git
  ```
- `git pull` → Update a repo  
  ```sh
  git pull origin main
  ```
- `git log` → View commit history  
  ```sh
  git log --oneline
  ```

---

## **9. Automation and Scripting**
### **9.1 Scheduling Tasks**
- `crontab -e` → Edit cron jobs  
  ```sh
  * * * * * /path/to/script.sh  # Runs every minute
  ```

### **9.2 Shell Scripting**
- `bash script.sh` → Run a shell script  
  ```sh
  echo "Hello World" > script.sh
  chmod +x script.sh
  ./script.sh
  ```

---

This guide covers **essential Linux commands** for **DevOps and App Support roles**, with real-world examples. Would you like any **advanced topics**, like **security hardening, cloud automation, or CI/CD tools**? 🚀