{%- set hostname = grains['id'] -%}

saltinstall:
  minion:
    id: {{ hostname }}
    master: diplomovka-ops
    master_port: 4506
    publish_port: 4505
    saltenv: base
    state_top_saltenv: base
    default_top: base
    test: false
    logging:
      log_file: /var/log/salt/minion
      log_level: warning
      log_datefmt: '%H:%M:%S'