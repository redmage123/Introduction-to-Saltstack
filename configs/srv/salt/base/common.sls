git:
  pkg.installed

vim:
  pkg.installed

/etc/vimrc:
  file.managed:
  - source: salt://vimrc
  - require: 
    - pkg: vim
  - user: root
  - group: root
  - mode: 644

bbrelin:

  group.present:
    - name: bbrelin
    - gid: 1000

  user.present:
    - fullname: 'Braun Brelin'
    - shell: /bin/bash
    - home: /home/bbrelin
    - password: $6$i9YHAtdYEAB7M7$igMel1JS5vEvbHTXV.FfqpLEek/BP.1Y.vOXeNkeFgUN2zjscdd1n5bvCE5JyVB.sRC.G2M9IrT3ETFfTW9.y0
    - uid: 1000
    - gid: 1000
    - groups:
      - admin
      - bbrelin

/etc/apt/sources.list:
  file.managed:
    - source: salt://sources.list
    - cmd:
      - run 
      - name: salt://update.sh
      - stateful
 
