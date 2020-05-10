#!/usr/bin/env bash
hdiutil create -o /tmp/HighSierra.cdr -size 8965m -layout SPUD -fs HFS+J
hdiutil attach /tmp/HighSierra.cdr.dmg -noverify -mountpoint /Volumes/install_build

asr restore -source /Applications/Install\ macOS\ High\ Sierra.app/Contents/SharedSupport/BaseSystem.dmg -target /Volumes/install_build -noprompt -noverify -erase

hdiutil detach /Volumes/OS\ X\ Base\ System
hdiutil convert /tmp/HighSierra.cdr.dmg -format UDTO -o ~/Desktop/HighSierra.iso
mv ~/Desktop/HighSierra.iso.cdr ~/Desktop/HighSierra.iso
rm /tmp/HighSierra.cdr.dmg
