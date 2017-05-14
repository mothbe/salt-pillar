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
      - git://github.com/mothbe/salt-formula.git
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

salt_formulas:
  git_opts:
    default:
      baseurl: https://github.com/mothbe
      basedir: /srv/formulas
      update: False
      options:
        rev: master
  basedir_opts:
    makedirs: True
    user: root
    group: root
    mode: 755
  list:
    base:
      - openssh-formula
      - users-formula
  
