base:
  '*':
    - salt
  'minion*':
    - groups.web
    - openssh
    - users.root
    - packages
    - crons
