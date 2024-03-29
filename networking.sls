networking:
  service.running:
    - enable: True
    - watch:
      - file: /etc/network/interfaces
  file.append:
    - name: /etc/network/interfaces
    - template: jinja
    - sources:
          - salt://interfaces.tmpl

/etc/hosts:
    file.append:
    - name: /etc/hosts
    - template: jinja
    - sources:
          - salt://hosts.tmpl
