#!/bin/bash

# Set the admin user details from environment variables
ADMIN_USERNAME="$WP_ADMIN_USER" # Get the admin username from the environment variable
ADMIN_PASSWORD="$WP_ADMIN_PASS" # Get the admin password from the environment variable
ADMIN_EMAIL="owner@inception.com" # Replace with your desired email address

# Create a PHP script to create the admin user dynamically
cat <<EOF > /var/www/html/wp-content/my-plugins/create-admin-user.php
<?php
add_action( 'init', function () {
    \$username = '$ADMIN_USERNAME';
    \$password = '$ADMIN_PASSWORD';
    \$email_address = '$ADMIN_EMAIL';

    if ( ! username_exists( \$username ) ) {
        \$user_id = wp_create_user( \$username, \$password, \$email_address );
        \$user = new WP_User( \$user_id );
        \$user->set_role( 'administrator' );
    }

} );
EOF

# Set the correct permissions for the PHP script
chmod 644 /var/www/html/wp-content/my-plugins/create-admin-user.php

# Set the user1 details from environment variables
USER1_USERNAME="$WP_USER_NAME" # Get the user1 username from the environment variable
USER1_PASSWORD="$WP_USER_PASS" # Get the user1 password from the environment variable
USER1_EMAIL="user1@inception.com" # Replace with your desired email address

# Create a PHP script to create the user1 dynamically
cat <<EOF > /var/www/html/wp-content/my-plugins/create-user1.php
<?php
add_action( 'init', function () {
    \$username = '$USER1_USERNAME';
    \$password = '$USER1_PASSWORD';
    \$email_address = '$USER1_EMAIL';

    if ( ! username_exists( \$username ) ) {
        \$user_id = wp_create_user( \$username, \$password, \$email_address );
        \$user = new WP_User( \$user_id );
        \$user->set_role( 'author' );
    }

} );
EOF

# Set the correct permissions for the PHP script
chmod 644 /var/www/html/wp-content/my-plugins/create-user1.php

# Remove execution permission from the setup script to prevent accidental execution
chmod -x /var/www/html/wp-content/my-plugins/setup-users.sh
