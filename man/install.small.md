---
title: Humdrum Toolkit Installation Guide
---

  -------------------------------- ----------------------------------------- ----------------------------------
  ![ ](/Humdrum/HumdrumIcon.gif)    ![Humdrum ](/Humdrum/HumdrumHeader.gif)    ![ ](/Humdrum/HumdrumSpacer.gif)
  -------------------------------- ----------------------------------------- ----------------------------------

\
\

Installing Individual Humdrum Commands
======================================

**This document provides quick assistance for installing individual
Humdrum commands.**\
\
**If you wish to install the complete Humdrum Toolkit, please refer to
the full-text [Installation Guide.](../install.html)**

Click on one of the following options:

-   **[I am installing a Humdrum tool for the first
    time.](#First%20Time%20Installation)**\
    \
-   **[I already have some Humdrum tools working on my system and want
    to add a new tool.](#Adding%20a%20New%20Tool)**

------------------------------------------------------------------------

[]{#Adding a New Tool}

Adding a New Tool
-----------------

If you have previously installed Humdrum tools on your system, then the
following actions should make the tool available for use on your system:

> cp \$HUMDRUM/bin\
> cp \$HUMDRUM/bin\
> chmod +x \$HUMDRUM/bin/commandname

Note that most Humdrum commands consist of two files. The first file is
the same as the name of the command (e.g. `census`). The second file
typically adds the `.awk` extension.

For example, the \"census\" command might be installed by typing:

> cp census \$HUMDRUM/bin\
> cp census.awk \$HUMDRUM/bin\
> chmod +x \$HUMDRUM/bin/census

------------------------------------------------------------------------

------------------------------------------------------------------------

[]{#First Time Installation}

First Time Installation
-----------------------

Indicate which operation system you are using:

-   [Unix, Linux, Solaris, HPUX, BSD, or other Unix system](#Unix)\
    \
-   [DOS, OS/2, Windows, Windows95/98, Windows 2000, Windows
    NT](#Windows)\
    \
-   [Macintosh OS X](#OSX)\
    \
-   [Other Macintosh system](#Mac)

> -   [What You Should Have.](#HAVE)
> -   [What You Need.](#NEED)
> -   [Installation Preliminaries.](#PRELIMINARIES)
> -   [Automatic Installation on Windows NT, Windows 95/98, Windows 3.X,
>     DOS and OS/2.](#DOS)
> -   [Automatic Installation on UNIX.](#UNIX)
> -   [Additional Information for UNIX Users.](#UNIX_MORE)
> -   [Installation on Apple Systems Using MachTEN.](#MAC)
> -   [MIDI Configuration.](#MIDI)
> -   [Quick-Start Tutorial.](#QUICK)
> -   [How Humdrum Works.](#HOW_WORKS)
> -   [Installing Version 2.0 of the \"perform\"
>     command.](linux.perform.html)
> -   [Trouble-Shooting Tips.](#TIPS)

**IMPORTANCE NOTICE:** PLEASE READ THIS INSTALLATION GUIDE CAREFULLY
BEFORE YOU BEGIN. Since this software is not a commercial product, no
user support is available. Your comments and suggestions are welcome,
although we cannot guarantee that your correspondence will be answered.
This *Installation Guide* and the [**associated
documentation**](index.html) are your principal sources of information.

[]{#DOS}

------------------------------------------------------------------------

The Humdrum tools were designed to work under the UNIX operating system.
The Humdrum tools will also work under Windows 95/98/NT, DOS or OS/2
environments provided the user has access to UNIX utilities for DOS or
OS/2. In all systems, the Humdrum tools must be invoked using the
*Kornshell* or *Bourne shell* command interpreters. Under LINUX the
compatible *Bash* shell interpreter can be used provided the shell
`getopts` function is available. The Humdrum Tools can also be run under
the C-shell (csh) or TC-shell (tsch) with some modifications.

[]{#NEED}

------------------------------------------------------------------------

What You Need
-------------

> **UNIX Users:**
>
> >   ------------------------------------------------
> >   If you are using UNIX, you need the following:
> >   ------------------------------------------------
> >
> >   ----- --------------------------------------------------------------
> >         
> >   (1)   At least 5 megabytes of free disk space
> >         
> >   (2)   *AWK* (1985 revision) \-- also known as *nawk*, *gawk*
> >         
> >   (3)   Either the *Kornshell* or *Bourne* shell command interpreter
> >         
> >   ----- --------------------------------------------------------------
> >
> **Windows 95/98/NT, Windows 3.X, DOS Users:**
>
> >   -----------------------------------------------
> >   If you are using DOS, you need the following:
> >   -----------------------------------------------
> >
> >   ----- ----------------------------------------------------------
> >         
> >   (1)   An IBM-PC or PC-compatible computer
> >         
> >   (2)   At least 5 megabytes of free disk space
> >         
> >   (3)   At least 512 kilobytes of internal memory
> >         
> >   (4)   DOS operating system; version 2.1 or later
> >         
> >   (5)   UNIX utilities for DOS, including *AWK* and *Kornshell*§
> >         
> >   (6)   Roland MPU-401 or compatible MIDI card (optional)
> >         
> >   ----- ----------------------------------------------------------
> >
§ These utilities are available from [**Mortice Kern
Systems.**](http://www.mks.com/solution/tk/)

> **Macintosh Classic, Quadra, Power Macs, Powerbook, G3 Users:**
>
> >   ----------------------------------------------------------
> >   If you are using Apple System 7, you need the following:
> >   ----------------------------------------------------------
> >
> >   ----- --------------------------------------------------------------------
> >         
> >   (1)   An Apple computer or compatible clone
> >         
> >   (2)   At least 5 megabytes of free disk space
> >         
> >   (3)   At least 512 kilobytes of internal memory
> >         
> >   (4)   System 7 or later operating system
> >         
> >   (5)   UNIX utilities for Apple systems, including *AWK* and *Kornshell*§
> >         
> >   ----- --------------------------------------------------------------------
> >
§ These utilities are available from [**Tenon
Intersystems.**](http://www.tenon.com/products/machten/)

[]{#PRELIMINARIES}

------------------------------------------------------------------------

Installation Preliminaries
--------------------------

The Humdrum tools are designed for use with UNIX, Windows 95/98/NT, DOS,
or OS/2 environments. However, there are some differences of
implementation between these systems that affect the configuration and
performance. On UNIX systems, the Humdrum tools pertaining to MIDI input
and output are currently unavailable. On Windows NT, Windows 95/98,
Windows 3.X, DOS and OS/2 systems the Humdrum Toolkit is able to work
only if the software has access to crucial UNIX utilities **not provided
with the toolkit.** In particular, the Humdrum tools will not work under
Windows, DOS or OS/2 without access to the *AWK* pattern-action language
and the *Kornshell* or *Bourne shell* command interpreters. Several
versions of both *AWK* and *ksh* are available for Windows 95/98/NT, DOS
and OS/2. Both commercial software and freeware are available. Reliable
versions of the necessary utilities are available in the [**MKS
Toolkit**](http://www.mks.com/solution/tk/) manufactured by [**Mortice
Kern Systems**](http://www.mks.com/), AT&T\'s
[**UWIN**](http://www.research.att.com/sw/tools/uwin/) utilities,
Microsoft\'s [**Interix**](http://www.interix.com/), and GNU\'s
[**cygwin**](http://sources.redhat.com/cygwin), These, or comparable
UNIX utilities, must be installed on your Windows 95/98/NT, DOS or OS/2
system **before** the Humdrum Toolkit can be successfully installed. The
Humdrum installation procedure itself makes use of various UNIX
utilities.

Presuming that you have installed the \"MKS Toolkit,\" \"UWIN\",
\"Interix\", or \"cygwin\", on your Windows 95/98/NT, DOS or OS/2
system, you can continue with the Humdrum installation.

You may install the Humdrum Toolkit by using the automatic installation
program \-- ` install` \-- provided with Humdrum.

[]{#DOS}

------------------------------------------------------------------------

Installation on Windows NT, Windows 95/98, Windows 3.X, DOS or OS/2
-------------------------------------------------------------------

Before you begin installation, you need to carry out a few preliminary
tasks.

-   First, you must ensure that either [**MKS
    Toolkit**](http://www.mks.com/solution/tk/),
    [**UWIN**](http://www.research.att.com/sw/tools/uwin/),
    [**Interix**](http://www.interix.com/), or
    [**cygwin**](http://sources.redhat.com/cygwin), has been installed
    and configured on your Windows NT, Windows 95/98, Windows 3.X, DOS
    or OS/2 system. These utilities will provide an user-selectable
    environment that it is similar to the UNIX operating system. Note
    that the presence of these UNIX utilities will not interfere with
    running other Windows 95/98/NT, DOS or OS/2 applications.
    N.B. Users unfamiliar with UNIX should be prepared for a period of
    learning and adjustment. It is not recommended that you install the
    Humdrum Toolkit until you have developed some facility with the
    following basic UNIX commands:
    ` cd, chmod, cp, ls, mkdir, more, man, mv, pwd, rm,` and ` whence.`
    In addition, some facility with a text editor, such as ` vi` or
    ` emacs` is recommended.\
    \
-   Secondly, insert the first distribution disk and read the ` readme`
    file. The ` readme` file may contain important last-minute
    information that is not contained in this printed document. Since
    the size of the Humdrum Toolkit varies from release to release, the
    ` readme` file also indicates the size of the current release. You
    need to ensure that sufficient space is available on your system for
    successful installation.

    If your floppy disk-drive is configured as disk \`A\', you can read
    the ` readme` file by typing the DOS or OS/2 command

    > ` type a:readme`

    If you have installed the UNIX utilities (as you should) you can
    read the *readme* file by typing one of the pertinent UNIX commands:

    > ` more a:readme`

    or

    > ` pg a:readme`

-   Thirdly, you need to make a directory that will receive the Humdrum
    files. The recommended directory name is ` /humdrum` under your home
    or root directory, but you are free to use any directory you wish.
    N.B. The ` install` program does not automatically create a default
    directory. Use the ``  `mkdir' `` command to make the appropriate
    directory prior to running the ` install` program. For example, if
    your hard disk is designated \`c:\' you might issue the command:

    > ` mkdir c:/humdrum`

-   Fourthly, you need to find out where your ` profile.ksh` is located.
    For single-user set-ups the profile is normally kept in
    ` /etc/profile.ksh,` however, if you are unsure of the whereabouts
    of ` profile.ksh` type the UNIX command

    > ` find / -name profile.ksh`

    If you find more than one ` profile.ksh` you will need to resolve
    which is most applicable to your use of Humdrum. If necessary, refer
    to your MKS reference manual for further information.

Having successfully completed these preliminaries, you are ready to
begin installation.

-   If you are installing the Humdrum Toolkit under Microsoft Windows
    for DOS or under OS/2, open a kornshell window. If you are
    installing the Humdrum Toolkit under DOS without Microsoft Windows,
    invoke the kornshell by typing:

    > ` sh`

-   Invoke the Humdrum ` install` program. If your floppy disk-drive is
    configured as disk \`A\', you can run ` install` by typing:

    > ` a:install`

    The ` install` program will ask a series of questions to which you
    will need to respond. If at any time, you wish to terminate the
    install procedure, type \`quit\' in response to any of the
    questions, or hold the control-key (CTRL) down while typing the
    letter \`c\'.\
    \

-   You will be asked to specify a directory in which to install the
    Humdrum toolkit. The Humdrum software will reside in this so-called
    *target* directory. As noted earlier (iii), for single-user systems
    the recommended directory is ` /humdrum` on your main hard disk. If
    the target directory does not already exist, the ` install` program
    will terminate, and will ask you to create such a directory; after
    you have created the appropriate *target* directory for the Humdrum
    tools, you should restart the ` install` program and continue with
    the installation.\
    \
-   You will be asked to specify the location (disk-drive or directory)
    where the distribution disk has been loaded. For example, if you
    have inserted the distribution disk in drive \`A\', you would
    answer:

    > ` a:`

-   Before the process of copying the files begins, ` install` will ask
    you to confirm the *source* (copy from) and *target* (copy to)
    directories.\
    \
-   Once you have specified a directory to install the Humdrum Toolkit,
    the ` install` program will check to determine whether a copy of
    Humdrum is already installed in the specified directory. If so, the
    ` install` program determines which *version* of the Humdrum
    Toolkit, is already present, and which version resides on the
    distribution disk. ` Install` will then issue a message telling you
    which version you already have, which version is on the distribution
    disk, and ask you whether you wish to over-write the existing
    Humdrum tools. If you answer \`yes\', the toolkit will be copied
    over the existing files. If you answer \`no\', the ` install`
    program will terminate.\
    \
-   The files will be uncompressed and copied into the appropriate
    directory. Each file is listed as it is copied. In addition to the
    files copied to the target directory, the installation procedure
    will create subdirectories to hold C source-code, spectral data for
    instrument tones, and sample musical scores. Insert successive
    distribution disks as prompted by ` install.`\
    \
-   Having installed the Humdrum Toolkit, the ` install` program will
    check to determine whether your environment is suitably configured
    for running the Humdrum tools. In order to run properly, four
    kornshell environment variables must be set.

    > The shell variable ``  `HUMDRUM' `` (note the use of upper-case
    > letters) must be set to the directory in which you installed the
    > Humdrum tools.
    >
    > The shell variable ``  `AWK_VER' `` must be set to the name of the
    > AWK interpreter to be invoked by the Humdrum commands.
    >
    > The shell variable ``  `TMPDIR' `` must be set to the name of a
    > permanent directory suitable for storing temporary files. We
    > recommend ` /tmp` on your main hard disk, or ` /tmp` on a RAM disk
    > for greater speed.
    >
    > The shell variable ``  `CON' `` must be set to indicate where
    > error messages should be directed. On Windows 95/98/NT, DOS or
    > OS/2 systems `CON` would normally be assigned to `con`.

    On Windows 95/98/NT, DOS or OS/2 systems, the above shell variables
    would normally be assigned as follows:

    > ` export TMPDIR=c:/tmp  export HUMDRUM=c:/humdrum  export AWK_VER=awk  export CON=con`

    On Windows 95/98/NT, DOS or OS/2 systems, the MKS Toolkit provides a
    \`large model\' version of AWK, dubbed ` awkl.` When using the MKS
    Toolkit, the ` AWK_VER` variable should be set to ` awkl.` Most of
    the Humdrum tools will not work if the \`small model\' version
    (`awk`) is used. If the GNU awk interpreter is used, set
    ` AWK_VER=gawk.`

    The ` install` program will determine whether any of the above shell
    variables have been set, and issue a message indicating which have
    not been set. If you wish, ` install` will set all of the above
    shell variables automatically. First, it will ask you whether you
    wish to have your kornshell \"profile\" modified. On Windows
    95/98/NT, DOS or OS/2 systems running with the MKS Toolkit, the
    profile information is maintained in a file ` profile.ksh.` If you
    wish to change your ` profile.ksh,` answer

    > ` yes`

    ` Install` will ask you to specify the location (path) of your
    profile file. You should have already determined its location in
    preliminary task iv) above. On most Windows 95/98/NT, DOS or OS/2
    systems using the MKS Toolkit, the default ` profile.ksh` will
    reside on the main disk in ` /etc/profile.ksh.` If you have
    specified a correct location for ` profile.ksh` the appropriate
    modifications will be made. A backup copy of your previous profile
    will be created, named ` profile.old.`

    N.B. If the shell variables have already been properly set,
    ` install` will not attempt to modify your ` profile.ksh,` nor will
    it over-write the ` profile.old.`\
    \

-   One further change needs to be made before the Humdrum Toolkit is
    operational. You must modify your PATH so that the Humdrum commands
    can be accessed. The ` install` program will *not* modify your PATH
    automatically. The appropriate modification must be made manually.
    On Windows 95/98/NT, DOS or OS/2 systems, your PATH may be set in
    ` autoexec.bat` or ` /etc/profile.ksh.` By way of example, the
    following DOS PATH includes five directories \-- searched in the
    following order: (1) c:/bin, (2) the current directory (;;), (3)
    c:/humdrum/bin, (4) c:/windows, and (5) c:/dos.

    > ` export PATH="c:/bin;;c:/humdrum/bin;c:/windows;c:/dos"`

    You will want to organize the PATH so that the most frequently used
    commands appear earliest in the directory list.\
    \

-   In order to run the Humdrum tools, you must be sure that the *shell*
    command interpreter has been invoked. On Windows 95/98/NT, DOS and
    OS/2 with the MKS Toolkit, this can be done by typing:

    > ` sh`

    If this command fails on Windows 95/98/NT, DOS or OS/2, you do not
    have the MKS Toolkit installed correctly.

In order to confirm that your Humdrum Toolkit has been successfully
installed, type the [**humver**](commands/humver.html) command. This
command will simply echo the version of the toolkit currently installed.
The Humdrum tools should be ready for use.

If you intend to make use of the Humdrum MIDI tools, refer to the
[**MIDI Configuration**](#MIDI) section of this installation guide.

[]{#UNIX}

------------------------------------------------------------------------

Installation on UNIX
--------------------

Before you begin installation, you need to carry out a few preliminary
tasks. Not all UNIX systems are equipped with a floppy disk drive. It
may be necessary to copy the entire contents of the distribution disks
in raw form into a temporary directory on your UNIX userid. This may be
done via **uucp, ftp, tar, procom, kermit,** or some other file-transfer
utility. (Refer to the UNIX reference manual for your facility.) Copy
the contents of all of the distribution disks into a single directory.
Note that most of the files are in compressed form.

-   Begin by reading the ` readme` file. The ` readme` file may contain
    important last-minute information that is not contained in this
    printed document. Since the size of the Humdrum Toolkit varies from
    release to release, the ` readme` file also indicates the size of
    the current release. You need to ensure that sufficient space is
    available on your system once all of the files are uncompressed.

    On UNIX systems you can read the *readme* file by typing one of the
    pertinent UNIX commands such as:

    > ` more readme`

-   Secondly, you need to make a directory that will receive the Humdrum
    files. The preferred directory name is ` /humdrum` under your home
    directory, but you are free to use any directory you wish. You can
    use the UNIX ``  `mkdir' `` command to make the appropriate
    directory. For example, you might issue the command:

    > ` mkdir $HOME/humdrum`

    to make a directory off your home directory.\
    \

-   Thirdly, you need to know where your` .profile` is kept. For
    multi-user systems, the pertinent` .profile` is normally kept in the
    directory ` $HOME.` However, if you are unsure of the whereabouts
    of` .profile` type the command:

    > ` find $HOME -name .profile`

    If you find more than one` .profile` you will need to resolve which
    is most applicable to your use of Humdrum.

Having successfully completed these preliminaries, you are ready to
begin installation.

-   Invoke the *kornshell* command interpreter by typing the command

    > ` sh`

    On LINUX systems you may use the ` bash` shell.\
    \

-   If you are installing the Humdrum Toolkit under UNIX ensure that the
    ` humunix, humver.ksh` and ` install` programs are executable by
    adding execute permissions. Type the command:

    > ` chmod a+x humunix humver.ksh install.ksh`

    You may need to give the full pathname of the directory in which
    you\'ve down-loaded the Humdrum files.\
    \

-   Run the ` install` program by typing:

    > ` install.ksh`

    Once again, you may need to specify the full pathname.

    The ` install.ksh` program will ask a series of questions to which
    you will need to respond. If at any time, you wish to terminate the
    install procedure, type \`quit\' in response to any of the
    questions, or hold the control-key (CTRL) down while typing the
    letter \`c\'.\
    \

-   You will be asked to specify a directory in which to install the
    Humdrum toolkit. The Humdrum software will reside in this so-called
    *target* directory. On UNIX systems, appropriate locations might be
    ` bin/humdrum` or ` humdrum` under your home directory ` ($HOME).`
    If the target directory does not already exist, the ` install`
    program will terminate, and will ask you to create such a directory;
    after you have created the appropriate *target* directory for the
    Humdrum tools, you should restart the ` install.ksh` program and
    continue with the installation.\
    \
-   You will then be asked to specify the location (directory) where the
    distribution files have been loaded. For example, if you have
    down-loaded the files into the directory ` /tmp/humdrum.temporary`
    you would answer:

    > ` /tmp/humdrum.temporary`

-   Before the process of copying the files begins, ` install.ksh` will
    ask you to confirm the *source* (copy from) and *target* (copy to)
    directories.\
    \
-   Once you have specified a directory to install the Humdrum Toolkit,
    the ` install.ksh` program will check to determine whether a copy of
    Humdrum is already installed in the specified directory. If so, the
    ` install.ksh` program determines which *version* of the Humdrum
    Toolkit, is already present, and which version you are intending to
    install. ` Install.ksh` will then issue a message telling you which
    version you already have, which version is in the source directory,
    and ask you whether you wish to over-write the existing Humdrum
    tools. If you answer \`yes\', the toolkit will be copied over the
    existing files. If you answer \`no\', the ` install` program will
    terminate.\
    \
-   The files will be uncompressed and copied into the appropriate
    directory. Each file is listed as it is copied. In addition to the
    files copied to the target directory, the installation procedure
    will create subdirectories to hold C source-code, spectral data for
    instrument tones, and sample musical scores.\
    \
-   Having installed the Humdrum Toolkit, the ` install.ksh` program
    will check to determine whether your environment is suitably
    configured for running the Humdrum tools. In order to run properly,
    four kornshell environment variables must be set.

    > The shell variable ``  `HUMDRUM' `` must be set to the directory
    > in which you installed the Humdrum tools.
    >
    > The shell variable ``  `AWK_VER' `` must be set to the name of the
    > AWK interpreter to be invoked by the Humdrum commands.
    >
    > The shell variable ``  `TMPDIR' `` must be set to the name of a
    > permanent directory suitable for storing temporary files. We
    > recommend ` /tmp` (provided it exists on your system).
    >
    > The shell variable ``  `CON' `` must be set to indicate where
    > error messages should be directed. On UNIX systems, `CON` would
    > normally be assigned to `/dev/stderr`.

    On UNIX systems, the above shell variables might be assigned as
    follows:

    > ` export TMPDIR; TMPDIR=/tmp  export HUMDRUM; HUMDRUM=$HOME/humdrum  export AWK_VER; AWK_VER=nawk  export CON; CON=/dev/stderr`

    On most UNIX systems, the ` AWK_VER` variable should be set to
    ` nawk;` \"nawk\" is a frequent designation for \"new AWK\" (the
    1985 revision of the AWK programming language). On some UNIX
    systems, the old version of the AWK interpreter has been deleted,
    and so new-awk is designated simply as \"awk.\" On these UNIX
    systems, ` AWK_VER` should be set to ` awk.`

    The ` install.ksh` program will determine whether any of the above
    shell variables have been set, and issue a message indicating which
    have not been set. If you wish, ` install.ksh` will set all of the
    above kornshell variables automatically. First, it will ask you
    whether you wish to have your kornshell \"profile\" modified. On
    UNIX systems, profile information is maintained in a file
    called` .profile` in the user\'s home directory. If you wish to
    change your` .profile,` answer

    > ` yes`

    ` Install` will ask you to specify the location (path) of
    your` .profile` file. On UNIX systems, the default` .profile` will
    be in the user\'s home directory. If you have specified a correct
    location for` .profile` the appropriate modifications will be made.\
    \

-   One further change needs to be made before the Humdrum Toolkit is
    operational. You must modify your PATH so that the Humdrum commands
    can be accessed. The ` install.ksh` program will *not* modify your
    PATH automatically. The appropriate modification must be made
    manually. On UNIX systems, your PATH is typically set in` .profile.`
    By way of example, the following UNIX PATH includes four directories
    \-- searched in the following order: (1) /usr/bin, (2) the current
    directory (::), (3) \$HOME/bin, and (4) \$HUMDRUM/bin:

    > ` export PATH=/usr/bin::$HOME/bin:$HUMDRUM/bin`

    You will want to organize the PATH so that the most frequently used
    commands appear earliest in the directory list.\
    \

-   In order to run the Humdrum tools, you must be sure to invoke the
    *kornshell* command interpreter. On UNIX, this can be done by
    typing:

    > ` sh`

    If this command fails, you do not have the kornshell selected.

In order to confirm that your Humdrum Toolkit has been successfully
installed, type the [**humver**](commands/humver.html) command. This
command will simply echo the version of the toolkit currently installed.
The Humdrum tools should be ready for use.

[]{#UNIX_MORE}

------------------------------------------------------------------------

Additional Information for UNIX Users
-------------------------------------

Some transfer programs \-- such as **ftp** \-- will preserve carriage
returns as a carriage-return/line-feed combination, rather than
transforming them into simple line-feeds expected by UNIX. You may
encounter problems with control-M characters (\^M) inserted at the end
of each record for all of your Humdrum files. These characters must be
eliminated in order for the Humdrum tools to be operational. If you are
an experienced UNIX user, you can use the ` sed` stream-editor to
eliminate all control-M characters. Execute the sed script:

> ` sed 's/^V^M//' inputfile > outputfile`

for each file \-- remembering to rename the output file as the input
file. (The string \"\^V\^M\" represents control-V followed by
control-M.) If you are not an experienced UNIX user, you may want to
seek the assistance of a local UNIX expert or consultant.

While it is possible to distribute executable files ` (.exe)` for
Windows 95/98/NT, DOS and OS/2 systems, the variety of UNIX platforms
precludes distributing executable files for various C programs.
Consequently, UNIX users must compile a handful of programs so that they
will work on your specific machine. Five programs are involved:
[**assemble**](commands/assemble.html),
[**humdrum\_**](commands/humdrum.html), [**midi**](commands/midi.html),
[**rid**](commands/rid.html), and [**simil**](commands/simil.html).
These programs can be compiled by (1) changing directory to each of the
source-code subdirectories for each of these tools (i.e. csource), and
(2) executing the *make* command for each tool. Simply type the command:

> ` make`

\-- once in each of the five subdirectories. Once you have made an
executable file, move it to your main Humdrum directory (`$HUMDRUM/bin`)
\-- using the UNIX ` mv` command. This will ensure that these programs
reside in your PATH. Finally, use the UNIX

> ` chmod a+x *`

command to ensure that all files in the `$HUMDRUM/bin` directory are
executable.

Note that since there is no standard MIDI interface for UNIX systems,
the Humdrum MIDI input and output tools cannot be used on UNIX. These
tools include [**encode,**](commands/encode.html)
[**record,**](commands/record.html) [**smf,**](commands/smf.html) and
[**tacet.**](commands/tacet.html) Version 2.0 of the \"perform\" command
can be [installed and configured](linux.perform.html) on Linux systems.

[]{#MAC}

------------------------------------------------------------------------

Installation on Apple Systems Using MachTEN
-------------------------------------------

Since Apple computer systems do not provide basic UNIX utilities, the
Humdrum Toolkit cannot be run on native Apple systems.

However, the Humdrum Toolkit can be installed if users purchase a
commercial set of UNIX utilities for Apple Systems. [**Tenon
Intersystems**](http://www.tenon.com) distributes a suitable product
called [**MachTEN.**](http://www.tenon.com/products/machten/) A
[**review of the MachTEN
software**](http://www.opus1.com/www/jms/machten.html) (including a
comparison with A/UX) was published in *Advanced Systems Magazine*
(formerly *Sun World Magazine*).

Assuming that MachTEN or similar software has been installed, users
should follow the instructions given for UNIX installation of the
Humdrum Toolkit.

[]{#MIDI}

------------------------------------------------------------------------

MIDI Configuration
------------------

The Humdrum MIDI tools can be used on Windows 95/98/NT, DOS and OS/2
systems provided the computer is fitted with a Roland MPU-401 or
compatible MIDI card. The Humdrum MIDI tools are not currently available
under UNIX. Note that the MIDI software tools support only the following
interrupts: 2/9, 3, 5, and 7. Interrupts 10, 11, and 12 will not work.
If necessary, refer to the manufacturer\'s hardware manual for details
concerning how to change interrupt settings on your MIDI board.

When using Microsoft *Windows,* the Humdrum MIDI tools are able to
access the MIDI card only if *Windows* is invoked in \"standard mode\"
rather than \"386 enhanced mode.\" From the DOS prompt type:

> ` win /s`

and select the MKS Kornshell icon. Once in the Kornshell, be sure that
your ` profile.ksh` has been executed. If not, type the command

> `   . /etc/profile.ksh`

[]{#QUICK}

------------------------------------------------------------------------

Quick-Start Tutorial
--------------------

Having installed the Humdrum Toolkit, you will be eager to see Humdrum
in action. Begin by changing directories to the Humdrum demonstration
directory. This is located in the subdirectory *demo* under the
directory where you installed Humdrum. In most cases, you can change
directories by typing the command:

> ` cd /humdrum/demo`

This directory holds a number of tutorial files, and also includes a
subdirectory containing a selection of musical scores encoded in various
Humdrum formats.

Begin by typing:

> ` demo`

This demonstration will first ask you whether you have an appropriate
MIDI set-up (see MIDI Configuration). Answer \`yes\' only if your system
runs Windows 95/98/NT, DOS or OS/2 and has a Roland MPU-401-compatible
MIDI card with a MIDI synthesizer connected for sound output. (Answering
\`no\' will restrict the demonstration to outputs that don\'t involve
sound.)

The Humdrum `demo` will provide a menu of ten sample problems. Each
problem will pose and answer some analytic question in real-time. (On
older machines, some of the sample calculations may take several minutes
to execute.) You can stop the demo at any time by typing one or more
control-Cs.

If your system is configured for MIDI output, you might also try
changing directories to the `scores` subdirectory and playing one of the
scores. A MIDI version of the first movement of Haydn\'s string quartet
Opus 76, No. 3, is encoded in the file `haydn76.hmd`.

Begin by typing the command:

> [`perform`](commands/perform.html) ` misc/haydn76.hmd`

If your MIDI system is properly configured, you should hear a deadpan
performance of the work. Try typing various numbers followed by . This
will move the performance immediately to the corresponding numbered
measure. (If you enter a number greater than the total number of
measures, playback will terminate.) Type plus (+) or minus (-) to move
ahead or backward one measure at a time. Press the space-bar to
interrupt play. Also try typing \`\<\' and \`\>\' to slow-down or
speed-up the tempo. (Notice that you don\'t have to use the shift-key
when typing \`\<\', \`\>\' or \`+\'.) You might also want to explore the
search commands. Try typing a slash (/) followed by the word
\`Development\', followed by . To search backward from the current score
position, use the question mark (?) rather than the slash \-- as in
\`?Exposition\' . To end, type the escape key . If your MIDI instrument
continues to sound after the [**perform**](commands/perform.html)
program has ended, type:

> ` tacet`

This will turn-off any sounding tones.

You may want to view the accompanying videocassette in order to further
familiarize yourself with the capabilities of the Humdrum Toolkit.
Ultimately, you will need to begin reading the Humdrum *Users\' Guide*
and start working through the tutorial exercises. As with the study of a
musical instrument, practice is essential to developing a skill.

[]{#HOW_WORKS}

------------------------------------------------------------------------

How HUMDRUM Works
-----------------

Some users may be interested in gaining a basic understanding how the
Humdrum tools work. The following description provides a general outline
of the operation of the Humdrum tools.

The Humdrum tools were developed with several criteria in mind. The
foremost criterion was that the tools needed to be easy to program. Most
of the tools are written in the AWK programming language \-- a \"fast
prototyping language\" whose syntax is very similar to that of the C
programming language. AWK was developed by Alfred Aho, Brian Kernighan,
and Peter Weinberger (hence the name AWK). AWK is especially well suited
to musical applications since AWK provides extensive, yet simple-to-use
facilities for matching and manipulating strings patterns.

Since AWK is an interpreted language, AWK programs must invoke the AWK
interpreter each time they are executed. The command-line syntax for
invoking AWK programs is cumbersome. In order to simplify the
command-line syntax, special-purpose \"shell scripts\" have been used to
massage the command invocation, to parse the options, and to provide
help screens where appropriate.

Most Humdrum commands cause a shell-script to be executed. Each script
invokes the AWK interpreter and calls the appropriate AWK program. The
shell-scripts were written in the well-known UNIX *Kornshell.* On
Windows 95/98/NT, DOS and OS/2 these scripts are held in files
designated by the *.ksh* extension. These scripts can also be executed
from the *Bourne* shell, but they are not compatible with the UNIX *C*
shell.

A typical Humdrum command, such as the [**kern**](commands/kern.html)
command, is associated with two files: *kern.ksh* (or just *kern* on
UNIX) and *kern.awk.* The` .awk` script acts as both the \"source\" code
and the \"executable\" code. Both` .ksh` and` .awk` files are ordinary
ASCII files, and so can be examined and (potentially) modified by the
user.

Some more complicated Humdrum commands have been partitioned into
several subprograms. For example, the Humdrum
[**extract**](commands/extract.html) command consists of four separate
programs, *extract1.awk, extract2.awk,* and so on. The associated shell
script *(extract.ksh)* determines which of the **extract** programs
should be invoked, on the basis of the user-selected options.

More computationally intensive programs have been written in the C
programming language. These include Humdrum commands such as
[**perform**](commands/perform.html) and
[**simil.**](commands/simil.html) On Windows 95/98/NT, DOS, the
`perform.exe, simil.exe,` \... files are executable files, compiled from
C programs. The Humdrum distribution disks include the complete source
code (.c files) for all of these commands.

In order to be able to execute Humdrum commands, several conditions need
to be satisfied. First, either the *Kornshell* or *Bourne* shell command
interpreter must be available. Second, the *AWK* language interpreter
must be available. Third, four pieces of information must be accessible
to the shell: (1) the shell must know where to find the Humdrum
commands, (2) it must know where to find the AWK interpreter, (3) it
must know where it can store temporary files, and (4) it must be told
where to direct standard error outputs (on UNIX normally `/dev/tty`; on
Windows 95/98/NT, DOS this is `con`. Each of these four pieces of
information need to be stored in shell \"environment\" variables. The
variables are named PATH, AWK\_VER, TMP, and CON.

When you boot your system, these variables need to be assigned properly,
otherwise the installed Humdrum tools will fail to work.

[]{#TIPS}

------------------------------------------------------------------------

Trouble-Shooting Tips
---------------------

The table below lists some common errors associated with faulty or
incomplete installation of the Humdrum Toolkit. [**Further
information**](humdrum.problems.html) is available to help with
trouble-shooting. .cs I 18

>   -------------------------------------- ---------------------------------------------------
>                                          
>   **Error**                              **Possible cause**
>                                          
>   =                                      
>                                          
>   `Bad command or file name`             Kornshell has not been installed or PATH
>                                          has not been properly set.
>                                          
>                                          
>   `glob: EXEC error`                     Install invoked from Windows without
>                                          opening a shell.
>                                          
>                                          
>   *` not found`*                         PATH not set correctly or command has
>                                          not been copied into the Humdrum directory.
>                                          
>                                          
>   *`: -f: not found`*                    AWK\_VER shell variable not set.
>                                          
>                                          
>   *`: awk: not found`*                   \"awk\" not in current PATH (DOS/OS2).
>   *`: nawk: not found`*                  \"nawk\" not in current PATH (UNIX).
>                                          
>                                          
>   `awk: script file "<progname.awk>":`   HUMDRUM shell variable not set, or PATH
>   `no such file or directory`            not set correctly.
>                                          
>                                          
>   `_main: memory allocation failure`     Input file(s) too big to handle; try breaking
>                                          the input into smaller segments (using
>                                          \`*yank*\'), and process each segment separately.
>                                          Assemble back together by using \`*cat*\'.
>                                          
>                                          
>   `pc: compiler error ...`               Humdrum \`pc\' command conflicts with a
>                                          Pascal language compiler named \`pc\'.
>                                          Rename Humdrum \`pc.ksh\' and \`pc.awk\' files.
>                                          
>   -------------------------------------- ---------------------------------------------------
>
------------------------------------------------------------------------

\

-   [**Humdrum Toolkit Home Page**](index.html)

Copyright © 1993, 1999 David Huron
