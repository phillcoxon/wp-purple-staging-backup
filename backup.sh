#!/usr/bin/bash

# run with:
#
# bash <(curl -s https://raw.githubusercontent.com/phillcoxon/wp-purple-staging-backup/master/backup.sh)

clear
wp cron event run wp_update_plugins # check for new plugins
wp plugin update --all
wp plugin install wpcore --activate
echo "y" | wp wpcore install --key=AedB0Pfzo1yVYcxZZVzI --activate=yes 
#wp plugin activate all-in-one-wp-migration all-in-one-wp-migration-multisite-extension all-in-one-wp-migration-unlimited-extension ai1wp-backblazeall-in-one-wp-migration-url-extension all-in-one-wp-migration-b2-extension all-in-one-wp-migration-s3-extension
wp plugin update all-in-one-wp-migration all-in-one-wp-migration-multisite-extension all-in-one-wp-migration-unlimited-extension all-in-one-wp-migration-url-extension all-in-one-wp-migration-b2-extension all-in-one-wp-migration-s3-extension
wp ai1wm backup 
