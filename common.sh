#!/usr/bin/env bash

NO_FORMAT="\033[0m"
C_DEEPSKYBLUE1="\033[38;5;39m"
C_GREEN3="\033[38;5;40m"
C_DARKORANGE="\033[38;5;208m"
C_RED3="\033[38;5;160m"

function info() {
    echo -e "[INFO] ${C_DEEPSKYBLUE1}$@${NO_FORMAT}"
}

function success() {
    echo -e "[ OK ] ${C_GREEN3}$@${NO_FORMAT}"
}

function warn() {
    echo -e "[WARN] ${C_DARKORANGE}$@${NO_FORMAT}"
}

function error() {
    echo -e "[ERR ] ${C_RED3}$@${NO_FORMAT}"
}
