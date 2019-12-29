#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install pazi for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
# Search shell pazi
# https://github.com/luismayta/zsh-pazi
#
# Requirements:
#  - zsh: https://www.zsh.org/

PAZI_PACKAGE_NAME='pazi'

function pazi::install {
    message_info "Installing ${PAZI_PACKAGE_NAME}"
    if [ -x "$(command which cargo)" ]; then
        cargo install "${PAZI_PACKAGE_NAME}"
    else
        message_error "Please install cargo"
    fi
    message_success "Installed ${PAZI_PACKAGE_NAME}"
}

function pazi::init {
    eval "$(pazi init zsh)"
}

function pazi::load {
    if [ -x "$(command which pazi)" ]; then
        pazi::init
    fi
}

pazi::load

if [ ! -x "$(command which pazi)" ]; then
    pazi::install
fi
