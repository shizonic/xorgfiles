#!/bin/bash

# -----------------------------------------------------------------------------
# safe reboot/shutdown
# -----------------------------------------------------------------------------

_quixand_down() {
  [[ -r "$HOME/.functions.d/quixand.sh" ]] \
    && source "$HOME/.functions.d/quixand.sh"
  quixand_down
}

slam() {
  [[ -x '/usr/bin/quixand' ]] \
    && _quixand_down
  sudo shutdown -h now
}

slur() {
  [[ -x '/usr/bin/quixand' ]] \
    && _quixand_down
  sudo reboot
}

# vim: set filetype=sh foldmethod=marker foldlevel=0 nowrap:
