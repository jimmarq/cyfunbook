# cyfun: Cybersecurity Fundamentals eBook

This project is an eBook written in AsciiDoc. It was created to use in a 100-level course in a university. The book uses a Creative Commons license that allows anybody to use the book without cost.

## Current Version

* [Download version 1.0 of the eBook - 9.85Mb](https://github.com/jimmarq/cyfunbook/releases/download/v1.0/Cybersecurity_Fundamentals-1.0.pdf)

## Guiding Principles

* Learn by doing. Most chapters walk students through concepts by using computers and reflecting on what is happening.
* Use real systems. Most labs are done using virtual machines. These are not simulations.
* Lower the barrier to entry. Students who have never taken a course on computers should be able to succeed. No expectation for previous experience with command line interfaces is expected.
* Create a foundation for success. For example, the commands introduced in the Linux section are commonly used when following tutorials. Somebody should be prepared to keep learning after this introduction.

## Compilation

This book can be compiled using Asciidoctor Web PDF (https://github.com/Mogztter/asciidoctor-web-pdf). Asciidoctor PDF (https://docs.asciidoctor.org/pdf-converter/latest/install/) can also be used. However, only the Asciidoctor Web PDF produces accessibility markup that satisfies my institution's accessibility guidelines.

* Download the latest release from https://github.com/Mogztter/asciidoctor-web-pdf/releases.
* Run asciidoctor-web-pdf Cybersecurity_Fundamentals.adoc -a stylesheet="+Cybersecurity_Fundamentals.css"
* The Cybersecurity_Fundamentals.css style sheet contains styles that will be applied after the default style sheet.

## Future Topics

This eBook will be improved over time based on student feedback and industry trends. The following topics will be included in a future version.

### Linux

* Expand the chapter on working with files to include the copy command
* Include a chapter on tar and zip files

### Threats

The current section on threats focuses primarily on social engineering attacks. The threats section needs to be expanded to include:

* Threat actors (e.g,.script kiddies, nation-states, organized crime, terrorists, hacktivists, APTs)
* Malware types (e.g., botnets, ransomware)
* DDoS

## Contributions

Corrections, additions, and suggestions are welcome. Pull requests will be considered. 
