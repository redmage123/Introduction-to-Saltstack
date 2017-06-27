base:
  '*':
   - env

   'webserver*':
     - webenv
     
     'dbserver*'
       - dbenv
