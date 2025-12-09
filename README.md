# Cybersecurity Fundamentals eBook

This project is an eBook written in AsciiDoc. It was created to use in a 100-level course in a university to teach foundational technical skills and cybersecurity concepts. 

A more updated version of the content is available at [my personal website](https://jimmarquardson.com/116).

No updates to the materials in this repository are planned.

## Current Version

You are free to download, distribute, and use this eBook.

* [Download version 2.2 of the eBook - 11Mb](https://github.com/jimmarq/cyfunbook/releases/download/v2.2/Cybersecurity_Fundamentals-2.2.pdf)

## Guiding Principles

* Learn by doing. Most chapters walk students through concepts by using computers and reflecting on what is happening.
* Use real systems. Most labs are done using virtual machines. These are not simulations.
* Lower the barrier to entry. Students who have never taken a course on computers should be able to succeed. No expectation for previous experience with command line interfaces is expected.
* Create a foundation for success. For example, the commands introduced in the Linux section are commonly used when following tutorials. Somebody should be prepared to keep learning after this introduction.
* To the greatest degree possible, chapters do not rely on configurations made in other chapters. The virtual machines used for labs should easily be discarded and recreated.

## Compilation

This book can be compiled using [Asciidoctor Web PDF](https://github.com/Mogztter/asciidoctor-web-pdf) or [Asciidoctor PDF](https://docs.asciidoctor.org/pdf-converter/latest/install/). Asciidoctor Web PDF produces accessibility markup that satisfies my institution's accessibility guidelines. But, Asciidoctor PDF produces better-looking PDFs.

### Compilation with asciidoctor-web-pdf

* Download the latest release from https://github.com/Mogztter/asciidoctor-web-pdf/releases.
* Run ```asciidoctor-web-pdf Cybersecurity_Fundamentals.adoc -a stylesheet="+Cybersecurity_Fundamentals.css"```
* The Cybersecurity_Fundamentals.css style sheet contains styles that will be applied after the default style sheet.

### Compilation with Asciidoctor PDF

* Install Ruby
* Install the asciidoctor-pdf gem: ```gem install asciidoctor-pdf```
* Install the rouge gem for syntax highlighting: ```gem install rouge```
* Compile: ```asciidoctor-pdf Cybersecurity_Fundamentals.adoc```

## Future Improvements

This eBook will be improved over time based on student feedback and industry trends. The following topics and changes will be included in a future version.

* Asymmetric cryptography: Add an exercise to import a public key and verify a file's signature (signed with somebody else's private key).
* Symmetric cryptographic: Add an exercise to decrypt a file that somebody else encrypted.
* The Windows section is brief. To be consistent with Linux, it should focus on the desktop experience.
* For Windows Defender, have students download a malicious file (not too malicious), such as a zip bomb from SecLists.
* The current section on threats focuses primarily on social engineering attacks. The threats section needs to be expanded to include:
* Threat actors (e.g,.script kiddies, nation-states, organized crime, terrorists, hacktivists, APTs)
* Malware types (e.g., botnets, ransomware)

## Contributions

Corrections, additions, and suggestions are welcome.

## License

This work is licensed using Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0). You are free to download, distribute, and use these materials without cost. If you make changes to these materials, you must also release those changes to the public.
