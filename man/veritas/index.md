---
title: 'Humdrum Toolkit Command Reference -- veritas'
permalink: /man/veritas/index.html
---

### COMMAND

**veritas** -- validate that a Humdrum document has not been modified

------------------------------------------------------------------------

### SYNOPSIS

` veritas  [-v]  inputfile`

------------------------------------------------------------------------

### DESCRIPTION

The **veritas** command provides an on-line means for formally or
informally verifying that a given Humdrum file originates with a given
publisher or source, or whether the file has been modified in some way.
The command provides a convenient way of reassuring scholars of the
accuracy or origin of a document.

The **veritas** command looks for a checksum validation number encoded
in a VTS reference record in the given input file. (See the [**Reference
Records (1)**](../guide.append1.html) description.) The command then
calculates the checksum for the file (excluding the VTS record itself)
and compares this value with the checksum encoded in the file. If these
values differ, a warning is issued that the file has been modified in
some way. If these values are the same, a confirming message is issued.

Note that this verification process is easily circumvented by malicious
individuals. For better security, the **-v** option should be invoked
and the output checksum value should be compared with an independent
printed list of checksums provided by the supplier of the electronic
document.

------------------------------------------------------------------------

### OPTIONS

The **veritas** command provides the following options:

>   -------- -------------------------------------------------------
>   **-h**   displays a help screen summarizing the command syntax
>   **-v**   invoke verbose mode
>   -------- -------------------------------------------------------
>
Options are specified in the command line.

The **-v** option will cause the checksum validation number to be
output. This value should be manually compared with a printed checksum
provided by the supplier of the electronic document. Note that the
change of even a single character in a file typically leads to a
radically different checksum.

------------------------------------------------------------------------

### PORTABILITY

DOS 2.0 and up, with the MKS Toolkit. OS/2 with the MKS Toolkit. UNIX
systems supporting the *Korn* shell or *Bourne* shell command
interpreters, and POSIX.2 compliant **cksum** command.

------------------------------------------------------------------------

### SEE ALSO

` cksum (UNIX), sum (UNIX)`

------------------------------------------------------------------------

\

-   [**Pertinent description in the Humdrum User
    Guide**](../guide37.html#Data_Integrity_Using_the_VTS_Checksum_Record)
-   [**Index to Humdrum Commands**](../commands.toc.html)
-   [**Table for Contents for Humdrum User Guide**](../guide.toc.html)

\
\
