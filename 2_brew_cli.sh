#!/bin/bash

brew update

brew  install  ag
brew  install  ffmpeg   # 轉擋
brew  install  git
brew  cask  install  java
brew  install  mycli    # mysql 自動補齊
brew  install  nmap
brew  install  node
brew  install  python
brew  install  python@2 # 補裝 pip2
brew  install  thefuck
brew  install  tldr
brew  install  trash    # 避免 rm 永久刪除檔案
brew  install  yarn

brew cleanup
