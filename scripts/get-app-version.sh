#!/bin/bash

yq '
  .modules[]
  | select(.name == "ricochlime")
  | .sources[]
  | select(.url == "*ricochlime.git")
  | .tag
' flatpak-flutter.yaml
exit $?
