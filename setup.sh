#!/bin/bash
sudo rm -rf var/cache/* var/page_cache/* var/view_preprocessed/* pub/static/* generated/*
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento indexer:reindex
php bin/magento c:f
sudo find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} +
sudo find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} +
sudo chown -R ajinkya:www-data .
sudo chmod u+x bin/magento
