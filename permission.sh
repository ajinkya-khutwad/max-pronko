#!/bin/bash
sudo rm -rf var/cache/* var/page_cache/* var/view_preprocessed/* pub/static/* generated/*
sudo find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} +
sudo find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} +
sudo chown -R ajinkya:www-data .
sudo chmod u+x bin/magento
