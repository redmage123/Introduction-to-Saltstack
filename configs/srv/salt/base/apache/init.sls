apache:
  pkg:
    - name: apache2
    - installed

apache_service:
   service.running:
    - name: apache2
    - enable: True
    - reload: True
    - watch:
      - file: apache_config
    - require:
      - file: apache_config
    

apache_config:
  file.managed:
    - name:  /etc/apache2/apache2.conf
    - source: salt://apache/apache2.conf
    - require:
      - pkg: apache
    - user: www-data
    - group: www-data
    - mode: 644
