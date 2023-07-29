#!/bin/bash

wp core install --url=localhost --title="INCEPTION" --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=owner@example.com --allow-root

wp user create ${WP_USER_NAME} user1@example.com --user_pass=${WP_USER_PASSWORD} --role=author --allow-root