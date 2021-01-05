#!/bin/bash

cd /var/www/html/

php maintenance/install.php --dbtype sqlite --dbuser root --dbname mw --dbpath /var/www/data/ --scriptpath "/w" --pass AdminPassword WikiName AdminUser

chown -R www-data:www-data /var/www/data/

echo '$wgServer = "http://localhost";' >> LocalSettings.php
echo '$wgArticlePath = "/wiki/$1";' >> LocalSettings.php
echo '$wgUsePathInfo = true;' >> LocalSettings.php

echo '$wgShowExceptionDetails = true;' >> LocalSettings.php
echo '$wgShowDBErrorBacktrace = true;' >> LocalSettings.php
echo '$wgDevelopmentWarnings = true;' >> LocalSettings.php
