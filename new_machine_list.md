- chrome
- phpstorm/webstorm
- iterm, ssh keys, .zsh
- git (or will be installed as part of Xcode)
- android studio, Xcode
- nodejs, nvm, yarn
- vagrant
- docker
- KeePassXC
- yandex disk
- tunnelblick or Pritunl or whatever vpn to access private work resources
- keybase
- sublime/vs code
- telegram
- anki
- monosnap
- source tree / fork
- spectacle
- sequel ace
- slack
- zoom
- copy clip (or better Paste) - copy/paste history
- postman
- homebrew
- noTunes - https://github.com/tombonez/noTunes

Additionally:
- vpn
- Centered - for focus
- Logi Tune - to work with logitech web camera
- https://www.multitouch.app/ - to use window edges for window sizes, or some additional gestured
- SCROLL REVERSER - for touchpad vertical scroll

- Xcode keys (move using Keychain Acess) - only to build mobile aps
  You should export the private key (.p12) through the Keychain Access.app from the mac where the profile already signed.
  In the certificates tab, look for your certificate, for example `iPhone Distribution: Mad Paws Pty. Ltd. (ALCW86ZWTG)`.
  Click on export. You will need to enter a password to generate a .p12 file containing the private key of your certificate.
  This file is what you should share with other mac, where you will need to import it (using the password). login -> Certificates
  After it the other mac should be able to use the provisioning profiles
