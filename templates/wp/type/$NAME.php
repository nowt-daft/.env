<?php

// DEFINITION:
add_action(
	'init',
	function() {
		register_post_type(
			'$PLURAL',
			[
				'labels'        => generate_type_labels(
					'$SINGLE',
					'$PLURAL',
				),
				'public'        => true,
				'supports'      => ['title'],
				'menu_icon'     => 'dashicons-',
				'menu_position' => 0,
				'has_archive'   => true,
				'rewrite'       => ['slug' => '$SLUG'],
			]
		);
	}
);

// ADMIN BOXES:
add_action(
	'add_meta_boxes',
	function() {
		add_meta_box(
			'$PLURAL-meta-key',
			'INSERT TITLE HERE',
			function($post) {
				$meta = get_data($post);
				$key = '$PLURAL-meta-key';
				$value = $meta[$key] ?? '';
				?>
				<input
					type="text"
					name="<?php echo $key ?>"
					value="<?php echo $value ?>"
				/>
				<?php
			},
			'$PLURAL',
			'normal', // side, etc.
			'high', // <- priority
		);
		// ADD MORE BOXES HERE
	}
);

// SAVE:
add_action(
	'save_post',
	function($id) {
		$type = get_post_type();

		if (
			$type != '$PLURAL'
		) return;

		$key = $type . '-meta-key';

		// IMAGE =>
		upload_image($id, $key);

		// REGULAR =>
		save_meta_value($id, $key);
	}
);

// Add RESTful API/CRUD Endpoints?
// may convert this to several files as opposed to just one.
