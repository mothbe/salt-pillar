sshd_config:
  Port: 22
  Protocol: 2
  PermitRootLogin: 'yes'
  PasswordAuthentication: 'no'
  StrictModes: 'yes'
  MaxAuthTries: 6
  PermitEmptyPasswords: 'no'
  PrintLastLog: 'yes'
