base:
  '*':
    - salt
  'client1':
    - groups.web
    - openssh
    - users
    - packages
