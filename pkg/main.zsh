#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function pazi::pkg::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_PAZI_PATH}"/pkg/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_PAZI_PATH}"/pkg/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_PAZI_PATH}"/pkg/linux.zsh
      ;;
    esac

}

pazi::pkg::main::factory
