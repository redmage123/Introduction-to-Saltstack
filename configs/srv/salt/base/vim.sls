vim:
  pkg.installed

/etc/vimrc:
  file.managed:
    - source: salt://vimrc
    - user: root
    - group: root
    - mode: 644
