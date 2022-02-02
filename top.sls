base:
# OS Linux
  'G@my_environment:base and G@os_family:RedHat':
    - salt.saltmanage-minion
    - salt.saltmanage-minion-grains
    - common.linux
# Diplomovka aplikacny minion
  'G@my_environment:dev and G@cluster:diplomovka':
    - diplomovka-app.firewalld-diplomovka