# Azure CLI Tools

A collection of bash scripts (curently it is only one) for my daily work with Azure. 

The scripts are basically wrappers around the `az` and `azd` cli tools from Microsoft.

> [!CAUTION]
> These scripts were created to fit my personal needs. They might not fit your needs, they might not work on your machine, they might not work with your project setup.

## Install

Set symlinks to `~/bin/` folder:

    make

Alternatively symlink to custom folders like this example:

    make BINDIR=/usr/local/bin/ COMPLETIONSDIR=/etc/bash_completions.d

## Usage

Authenticate via PAT

    az devops login

List Pull-Requests of an Azure Project

    pr --help
