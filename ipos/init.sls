/usr/local/bin/ipos:
  file.managed:
    - source: salt://ipos/ipos
    - user: root
    - group: root
    - mode: 755

