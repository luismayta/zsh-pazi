#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function pazi::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_PAZI_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_PAZI_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_PAZI_PATH}"/internal/linux.zsh
      ;;
    esac
}

pazi::internal::main::factory
pazi::internal::pazi::load

if ! core::exists pazi; then pazi::internal::pazi::install; fi
