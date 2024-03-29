<!doctype html>
<html <?php language_attributes(); ?> class="no-js">
	<head>
		<meta charset="<?php bloginfo('charset'); ?>">
		<title><?php wp_title(''); ?><?php if(wp_title('', false)) { echo ' :'; } ?> <?php bloginfo('name'); ?></title>

		<link href="//www.google-analytics.com" rel="dns-prefetch">
        <link href="<?php echo get_template_directory_uri(); ?>/img/icons/favicon.ico" rel="shortcut icon">
        <link href="<?php echo get_template_directory_uri(); ?>/img/icons/touch.png" rel="apple-touch-icon-precomposed">

		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="<?php bloginfo('description'); ?>">

		<link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">




		<script type="text/javascript" src="wp-content/themes/html5blank-stable/js/jquery.min.js"></script>
		<script type="text/javascript" src="wp-content/themes/html5blank-stable/js/jquery.inview.js"></script>
		<script type="text/javascript" src="wp-content/themes/html5blank-stable/js/assets.js"></script>
		<?php wp_head(); ?>
		<script>
        // conditionizr.com
        // configure environment tests
        conditionizr.config({
            assets: '<?php echo get_template_directory_uri(); ?>',
            tests: {}
        });
        </script>

	</head>
	<body>

		<!-- wrapper 
<div id="preloader">
  <div class="loader" id="loader-1"></div>
</div>-->
			<!-- header -->
			<header>
			        <section class="inner">   
			            <a href="#" class="open_nav"><span></span></a>
			            <a href="index.php" class="logo"><img src="wp-content/themes/html5blank-stable/img/atlas.svg" alt="Atlas Media"></a>
			            <nav>
			            	<?php 
							wp_nav_menu(
								array(
							'theme_location'  => 'header-menu',
							'container'       => 'nav',
							'container_class' => false,
							'container_id'    => '',
							'menu_class'      => false,
							'menu_id'         => '',
							'echo'            => true,
							'fallback_cb'     => 'wp_page_menu',
							'before'          => '',
							'after'           => '',
							'link_before'     => '',
							'link_after'      => '',
							'items_wrap'      => '<ul>%3$s</ul>',
							'depth'           => 0,
							'walker'          => ''
							)
						);
					?>
			            </nav>
			        </section>

			</header>
			<!-- /header -->
