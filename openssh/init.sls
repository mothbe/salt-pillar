sshd_config:
  Port:
    - 22
    - 2233
  Protocol: 2
  PermitRootLogin: 'yes'
  PasswordAuthentication: 'no'
  StrictModes: 'yes'
  MaxAuthTries: 6
  PermitEmptyPasswords: 'no'
  PrintLastLog: 'yes'
  PrintMotd: 'no'
