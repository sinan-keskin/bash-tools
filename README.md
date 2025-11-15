# 🖥️ sys-info

A minimal Bash tool that prints **clean and readable system information**.  
CPU, RAM, disk, OS, kernel and uptime details — all in one command.

---

## 🔧 What it does

`sys-info.sh` collects useful system metrics such as:

- 🖥 **Operating System**  
- 🧬 **Kernel version**  
- 🔧 **CPU model**  
- 🧠 **Memory usage**  
- 💾 **Disk usage**  
- ⏱ **System uptime**  
- 👤 **Current user**

Everything is printed in a **clean and formatted output**, optimized for readability.

---

## 🚀 Usage
```bash
chmod +x sys-info.sh
./sys-info.sh
```

## Help:
```bash
./sys-info.sh --help
```

## 📦 Example Output
```txt
[INFO] Gathering system information...

  🖥  SYSTEM INFORMATION
  ----------------------
  OS:        Linux
  Kernel:    6.8.12-arch1-1
  Uptime:    up 3 hours, 12 minutes
  User:      sinan

  🔧 HARDWARE
  ----------------------
  CPU:       Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz
  Memory:    3.1G/15G
  Disk:      21G/120G

[INFO] Done.
```

## 🎯 Goal
Provide a simple, dependency-free system information utility that works on
Linux and macOS using only POSIX shell tools.
