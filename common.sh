#!/usr/bin/env bash

NO_FORMAT="\033[0m"
C_DEEPSKYBLUE1="\033[38;5;39m"
C_GREEN3="\033[38;5;40m"

function info() {
    echo -e "[INFO] ${C_DEEPSKYBLUE1}$@${NO_FORMAT}"
}

function success() {
    echo -e "[ OK ] ${C_GREEN3}$@${NO_FORMAT}"
}

function warn() {
    echo -e "[WARN] ${C_GREEN3}$@${NO_FORMAT}"
}

function success() {
    echo -e "[ERR ] ${C_GREEN3}$@${NO_FORMAT}"
}
