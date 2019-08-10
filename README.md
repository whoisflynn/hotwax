![image](https://user-images.githubusercontent.com/8198523/62826983-af786380-bb93-11e9-85a6-c938284e1057.png)
# HOTWAX

Hotwax is a script to provision a set of extra pentesting tools onto a Kali Linux machine in a consistent manner.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for deployment AND development purposes.

### Prerequisites

Git.

```
apt install -y git
```

### Installing

Clone the HOTWAX repository, including submodules.

```
cd ~
git clone --recurse-submodules https://github.com/BrashEndeavours/hotwax 
```

Run the installer

```
cd hotwax
./install.sh
```

## Tools installed:

 - [LinEnum](https://github.com/rebootuser/LinEnum) - Local Linux Enumeration & Privilege Escalation Script 
 - [One-Lin3r](https://github.com/D4Vinci/One-Lin3r) - On demand one-liners that aid in penetration testing operations, privilege escalation and more
 - [PowerSploit](https://github.com/PowerShellMafia/PowerSploit) - Collection of Microsoft PowerShell modules that can be used to aid penetration testers during all phases of an assessment.
 - [SecLists](https://github.com/danielmiessler/SecLists) - Collection of usernames, passwords, URLs, sensitive data patterns, fuzzing payloads, web shells, and more.
 - [nishang](https://github.com/samratashok/nishang) - Framework and collection of scripts and payloads which enables usage of PowerShell for penetration testing.
 - [pspy](https://github.com/DominicBreuker/pspy) - Monitor linux processes without root permissions.
 - [sherlock](https://github.com/sherlock-project/sherlock) - Find usernames across social networks.
 - [AutoRecon](https://github.com/Tib3rius/AutoRecon) - AutoRecon is a multi-threaded network reconnaissance tool which performs automated enumeration of services.
- [Windows PHP Reverse Shell](https://github.com/Dhayalanb/windows-php-reverse-shell) - Simple php reverse shell implemented using binary , based on an webshell .
- [OSCP Exam Report Template](https://github.com/whoisflynn/OSCP-Exam-Report-Template) - Modified template for the OSCP Exam

## Contributing

Please read [CONTRIBUTING.md](https://github.com/BrashEndeavours/hotwax/blob/master/CONTRIBUTING.md) for details on the code of conduct, and the process for submitting pull requests.

## Authors

* **Blake Mackey (@BrashEndeavours)** - *Initial work* - [BrashEndeavours](https://github.com/BrashEndeavours)

## Contributors

* **Alec Mather-Shapiro** - *Added AutoRecon, Windows PHP Reverse Shell, and OSCP Exam Template** - [whoisflynn](https://github.com/whoisflynn)
* Want your name here? See CONTRIBUTING.md for details.

## Acknowledgements

* **Rebootuser (@rebootuser)** - [LinEnum](https://github.com/rebootuser/LinEnum)
* **D4Vinci (@Seekurity)** - [One-Lin3r](https://github.com/D4Vinci/One-Lin3r)
* **PowerShellMafia** - [PowerSploit](https://github.com/PowerShellMafia/PowerSploit)
* **Daniel Miessler** - [SecLists](https://github.com/danielmiessler/SecLists)
* **Nikhil "SamratAshok" Mittal** - [nishang](https://github.com/samratashok/nishang)
* **Dominic Breuker** - [pspy](https://github.com/DominicBreuker/pspy)
* **sherlock-project** - [sherlock](https://github.com/sherlock-project/sherlock)
* **Tib3rius** - [AutoRecon](https://github.com/Tib3rius/AutoRecon)
* **Dhayalanb** - [Windows PHP Reverse Shell](https://github.com/Dhayalanb/windows-php-reverse-shell)
* **whoisflynn** - [OSCP Exam Report Template](https://github.com/whoisflynn/OSCP-Exam-Report-Template)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

