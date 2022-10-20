# Cybersecurity Fundamentals eBook

This project is an eBook written in AsciiDoc. It was created to use in a 100-level course in a university to teach foundational technical skills and cybersecurity concepts. 

## Current Version

You are free to download, distribute, and use this eBook.

* [Download version 1.0 of the eBook - 9.85Mb](https://github.com/jimmarq/cyfunbook/releases/download/v1.0/Cybersecurity_Fundamentals-1.0.pdf)

## Guiding Principles

* Learn by doing. Most chapters walk students through concepts by using computers and reflecting on what is happening.
* Use real systems. Most labs are done using virtual machines. These are not simulations.
* Lower the barrier to entry. Students who have never taken a course on computers should be able to succeed. No expectation for previous experience with command line interfaces is expected.
* Create a foundation for success. For example, the commands introduced in the Linux section are commonly used when following tutorials. Somebody should be prepared to keep learning after this introduction.
* To the greatest degree possible, chapters do not rely on configurations made in other chapters. The virtual machines used for labs should easily be discarded and recreated.

## Compilation

This book can be compiled using Asciidoctor Web PDF (https://github.com/Mogztter/asciidoctor-web-pdf). Asciidoctor PDF (https://docs.asciidoctor.org/pdf-converter/latest/install/) can also be used. However, only the Asciidoctor Web PDF produces accessibility markup that satisfies my institution's accessibility guidelines.

* Download the latest release from https://github.com/Mogztter/asciidoctor-web-pdf/releases.
* Run asciidoctor-web-pdf Cybersecurity_Fundamentals.adoc -a stylesheet="+Cybersecurity_Fundamentals.css"
* The Cybersecurity_Fundamentals.css style sheet contains styles that will be applied after the default style sheet.

## Future Improvements

This eBook will be improved over time based on student feedback and industry trends. The following topics and changes will be included in a future version.

### Introduction

* Make VMWare an option. (Two students out of 25 could not make VirtualBox work.)
* Working with .gz files on Windows using 7-zip. (The Kali VMware image is a .gz download.)
* Taking screenshots using Greenshot. (Computer policy blocked some built-in Windows tools.)

### Linux

* Expand the chapter on working with files to include the copy (cp) command
* Include a chapter on tar and zip files. Include sample files.
* Include the logger command. Search logs with grep and zgrep. Include an exercise to download a script and run it. The script should write logs.
* Add a Linux review activity so that students reinforce what they learned.

### Cryptography

* Expand password cracking to include bcrypt hashes. Define the metrics reported by john regarding hashing speed.
* Asymmetric cryptography: Add an exercise to import a public key and verify a file's signature (signed with somebody else's private key).
* Symmetric cryptographic: Add an exercise to decrypt a file that somebody else encrypted.

### Windows

The Windows section is brief. Currently, it doesn't help students to be proficient using Windows, and it doesn't introduce Windows Server well. The book needs to pick a direction--help people use Windows well, or introduce server features.

* Need to use a Windows Server virtual machine for standardization.
* Some students could not access the Windows Store to intall Windows Terminal. Some students could not launch the Group Policy Editor.
* For Windows Defender, have students download a malicious file (not too malicious), such as a zip bomb from SecLists.
* It would be better to replace the user accounts and permission with an exercise that uses Active Directory.
* The Firewall chapter should only be included if manipulating the firewall in a VM. Students should risk breaking their security on the host.

### Threats

The current section on threats focuses primarily on social engineering attacks. The threats section needs to be expanded to include:

* Threat actors (e.g,.script kiddies, nation-states, organized crime, terrorists, hacktivists, APTs)
* Malware types (e.g., botnets, ransomware)

## Contributions

Corrections, additions, and suggestions are welcome. Pull requests will be considered. 

## License

This work is licensed using Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0). You are free to download, distribute, and use these materials without cost. If you make changes to these materials, you must also release those changes to the public.
