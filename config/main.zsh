#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function pazi::config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_PAZI_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_PAZI_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_PAZI_PATH}"/config/linux.zsh
      ;;
    esac
}

pazi::config::main::factory
