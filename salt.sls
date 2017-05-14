salt:
  master:
    worker_threads: 2
    default_top: base
    top_file_merging_strategy: same
    state_output: mixed
    fileserver_backend:
      - roots
      - git
    gitfs_env_whitelist:
      - base
    gitfs_remotes:
      - git://github.com/mothbe/openssh-formula.git
      - git://github.com/mothbe/salt-formula.git
      - git://github.com/saltstack-formulas/users-formula.git:
        - saltenv:
          - base:
            - ref: 27019e0f94892bc8db0bd28790788325339da2e0
    file_roots:
      base:
        - /srv/salt
      dev:
        - /srv/dev/salt
    pillar_roots:
      base:
        - /srv/pillar
      dev:
        - /srv/dev/pillar
  minion:
    master: localhost
