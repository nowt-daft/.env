<?php
/*
 * Plugin Name:    $NAME
 */

if (
	!defined('ABSPATH')
) exit;

require_once WP_CONTENT_DIR . 'includes/type.php';
require_once WP_CONTENT_DIR . 'includes/render.php';
require_once WP_CONTENT_DIR . 'includes/save.php';

// REQUIRE ALL FILES IN THE TYPES/ DIRECTORY
$TYPES_DIR = __DIR__ . 'types/';
$nodes = scandir($TYPES_DIR);

foreach ($nodes as $node) {
	$file = $TYPES_DIR . $node;
	if (is_file($file)) {
		require_once $file;
	}
}

