;<?php exit; ?>
;*** DO NOT REMOVE THE LINE ABOVE ***
;------------------------------------------------------------------------------------------;
; Installer command line tool settings                                                     ;
;------------------------------------------------------------------------------------------;

[database]
type      = mysqli ; Either mysqli or pgsql
host      = db
name      = revive
socket    = ; pls fill in w/ path to use unix socket instead of tcp
port      = 3306
username  = revive
password  = revive

[table]
prefix  = rv_
type    = INNODB ; Either MyISAM, or INNODB, for MySQL ONLY

[admin]
username  = admin
password  = secret
email     = admin@example.com
language  = en
timezone  = ; empty to autodetect

[paths]
admin      = localhost/www/admin
delivery   = localhost/www/delivery
images     = localhost/www/images
imageStore = ; path to the image directory, empty to autodetect
