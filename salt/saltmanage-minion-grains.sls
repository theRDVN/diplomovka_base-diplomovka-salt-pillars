saltinstall:
  grains:
    saltinfra: minion
    site: diplomovka
    my_environment: base
{% if grains['id'] == 'diplomovka-app-01' %}
    server_type: app
    component:
      - docker
      - java
      - maven
    cluster: diplomovka
    module: diplomovka-334620
    network: default
    appuser: docker
{% endif %}