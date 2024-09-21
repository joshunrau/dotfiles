#!/usr/bin/env zsh

CMD="$1"
shift

case "$CMD" in
  info)
    video::info "$@"
    ;;
  optimize)
    video::optimize "$@"
    ;;
  *)
    echo "Usage: $0 {info}"
    ;;
esac
