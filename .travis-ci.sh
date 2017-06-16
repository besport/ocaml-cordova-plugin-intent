#!/bin/bash -
#===============================================================================
#
#          FILE: .travis-ci.sh
#
#         USAGE: ./.travis-ci.sh
#
#   DESCRIPTION: Generate the ml file and compile
#
#        
#       CREATED: 2017
#      REVISION: 1.0
#===============================================================================

set -o nounset                              # Treat unset variables as an error

URL=https://github.com/krzischp/ocaml-cordova-plugin-plugin-intent.git
PLUGIN_PIN=cordova-plugin-intent

export OPAMYES=1

if [ -f "$HOME/.opam/config" ]; then
    opam update
    opam upgrade
else
    opam init
fi

if [ -n "${OPAM_SWITCH}" ]; then
    opam switch ${OPAM_SWITCH}
fi
eval `opam config env`

export OCAMLRUNPARAM=b

opam pin add ocaml-js-stdlib https://github.com/dannywillems/ocaml-js-stdlib.git

# Test for make and make clean
make && make clean

# Test for make install and make remove
make install && make remove && make clean
