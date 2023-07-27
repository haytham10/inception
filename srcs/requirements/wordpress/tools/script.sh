#!/bin/sh
cat << EOF > /var/www/wp-config.php
<?php
define( 'DB_NAME', '$MYSQL_DATABASE' );
define( 'DB_USER', '$MYSQL_USER' );
define( 'DB_PASSWORD', '$MYSQL_PASSWORD' );
define( 'DB_HOST', 'mariadb' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );
define('FS_METHOD','direct');
$table_prefix = 'wp_';
define( 'WP_DEBUG', false );
define( 'WP_REDIS_HOST', 'redis' );
define( 'WP_REDIS_PORT', 6379 );
define( 'WP_CACHE', true );

// Check if WordPress is being installed or if it's already set up
if ( ! file_exists( ABSPATH . 'wp-config.php' ) ) {
    // Generate random passwords for the admin and user
    $admin_password = getenv(WP_ADMIN_PASSWORD);
    $user_password = getenv(WP_USER_PASSWORD);

    // Create the administrator account
    wp_create_user( 'owner', $admin_password, 'owner@example.com' );
    $admin_user = get_user_by( 'login', 'owner' );
    $admin_id = $admin_user->ID;
    wp_update_user( array( 'ID' => $admin_id, 'role' => 'administrator' ) );

    // Create the regular user account
    wp_create_user( 'user1', $user_password, 'user1@example.com' );
    $user_user = get_user_by( 'login', 'user1' );
    $user_id = $user_user->ID;
    wp_update_user( array( 'ID' => $user_id, 'role' => 'subscriber' ) );
}

if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', __DIR__ . '/' );
}
require_once ABSPATH . 'wp-settings.php';
EOF
