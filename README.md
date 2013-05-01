# Exosense ServerSpecifications
(C) 2013 Feuerlabs, inc, All rights reserved.


This repository contains three sections that defines the external
interface of the Exosense Server.

1. **Yang Specifications (yang)**<br>
Yang (RFC 6020) is used as an interface definition language to specify
all apsects of the JSON-RPC interface implemented by the server. Any
client communicating with the server through JSON-RPC is expected to
adhere to those specifications.

2. **Server Manual (doc/exosense_server_manual.pdf)**<br>
Gives an overview of the server functionality and external-facing
structure.

3. **JSON-RPC Reference Manual (doc/exosense_reference_manual.pdf)**<br>
Documents all supported JSON-RPC commands (as defined by the Yang
specifications) and their use.

4. **JSON-RPC wrapping shell scripts (scripts/*.sh)**<br>
Contains shell scripts to implement the majority of the JSON-RPC
commands. These scripts can be used to interface the Exosense Server
from a command line. The curl scripts can also be used as a reference
to resolve ambiguities in the reference manual.


# Setting up the shell script environment

In order for the shell scripts to operate, they must know the URL
where the Exosense Server resides, and how to authenticate to it. This
is done through the ~/.exodmrc file that looks like the following

    URL=https://test.feuerlabs.com:8000/exodm/rpc
    USER_AUTH=<account>:<password>

The `URL` in the example above points to the Feuerlabs test server
provided for free for up to ten devices. Please email us at accounts at Feuerlabs to get an account setup.

The USER_AUTH contains the account name and password assigned to you
by Feuerlabs. 

Some of the scripts (such as create-account.sh) requires administrator
access. Send us an email if you for some reason need admin rights to
the test server.


