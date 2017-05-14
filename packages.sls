packages:
{% if grains['os_family'] == 'RedHat' %}
  pkgs: [ 'mc', 'wget', 'curl', 'links' ],
{% elif grains['os_family'] == 'Debian' %}
  pkgs: [ 'vim', 'git', 'unzip', 'mc', 'dnsutils' ]
{% endif %}
