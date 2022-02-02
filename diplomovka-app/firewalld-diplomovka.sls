firewalld:
  enabled: True
  default_zone: public
  zones:
    public:
      short: Public
      description: "For use in public areas. You do not trust the other computers on networks to not harm your computer. Only selected incoming connections are accepted."
      services:
        - ssh
        - dhcpv6-client
      ports:
        - port: 22
          protocol: tcp
        - port: 80
          protocol: tcp
        - port: 80
          protocol: udp
        - port: 8100
          protocol: tcp
        - port: 8100
          protocol: udp
        - port: 8200
          protocol: tcp
        - port: 8300
          protocol: tcp