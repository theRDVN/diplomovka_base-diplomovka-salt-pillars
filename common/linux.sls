{%- set hostname = grains['fqdn'] -%}

linux:
  system:
    enabled: true
    domain: 'dc.local'
    environment: DEV
    prompt:
      default: \\[\\e[1;32m\\][\\u@\\h:\\w]\\[\\e[0m\\]
    motd: |
      ------------------------------------------------------
      ---- Diplomovka BASE Environment.                 ----
      ---- This is the salt managed server              ----
      ------------------------------------------------------

