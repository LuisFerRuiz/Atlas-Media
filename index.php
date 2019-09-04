<?php get_header(); ?>

    <main>
        <!-- section -->
        <section>

            <section class="content">


        <article class="home" id="home">
            <figure>
                <img data-src="wp-content/themes/html5blank-stable/img/bg_atlas.jpg">
            </figure>
            <section class="inner">
                <div>
                    <h1 class="animated fadeInUp">Make <span>likes</span>,<br>not war<span>.</span></h1>
                    <h2 class="animated fadeInUp"><span>And don't forget</span> Amor</h2>
                </div>
            </section>
        </article>
        <article class="servicios" id="servicios">
            <section class="title">
                <section class="inner">
                    <h1>Servicios</h1>    
                </section>
            </section>
            <section class="inner">
                <section class="flex_services">
                	<?php
					$the_query = new WP_Query( [
						'post_type' => 'post',
						'posts_per_page' => 8,
						'order' => 'DESC',
						'post_status' => 'publish',
						'category_name' => "servicios",
					] );

					// The Loop
					if ( $the_query->have_posts() ) {
						while ( $the_query->have_posts() ) {
							 $the_query->the_post();
					?>
						<div>
                        <h3><?= the_title(); ?><span>.</span></h3>
                        <p><?= the_excerpt();?></p>
                    	</div>
					<?php }
	    				wp_reset_postdata();
	    				}
	    			?>
                </section>
            </section>
        </article>
        <article class="nosotros" id="nosotros">
            <figure>
                <img data-src="wp-content/themes/html5blank-stable/img/bg_atlas.jpg">
            </figure>
            <section class="title">
                <section class="inner">
                    <h1>Nosotros</h1>    
                </section>
            </section>
            <section class="inner">
                <section class="nosotros_intro">
                	<?php
					$the_query = new WP_Query( [
						'post_type' => 'post',
						'posts_per_page' => 1,
						'post_status' => 'publish',
						'tag' => "izquierda",
					] );

					// The Loop
					if ( $the_query->have_posts() ) {
						$the_query->the_post();
					?>
						<div>
						<p><?= the_title(); ?></p>
						<small><?= the_excerpt();?></small>
                    	</div>
					<?php 
	    				wp_reset_postdata();
	    				}
	    			?>
                </section>
                <section class="nosotros_info">
                <?php
					$the_query = new WP_Query( [
						'post_type' => 'post',
						'posts_per_page' => 1,
						'post_status' => 'publish',
						'tag' => "derecha",
						
					] );

					// The Loop
					if ( $the_query->have_posts() ) {
						$the_query->the_post();
					?>
						<div>
						<h4><?= the_title(); ?></h4>
                    	<p><?= the_excerpt();?></p>
                    	</div>
					<?php 
	    				wp_reset_postdata();
	    				}
	    			?>
                </section>
            </section>
        </article>
        <article class="contacto" id="contacto">
            <section class="title">
                <section class="inner">
                    <h1>Contacto</h1>    
                </section>
            </section>
            <section class="inner">
            	<?php
					$the_query = new WP_Query( [
						'post_type' => 'post',
						'posts_per_page' => 1,
						'post_status' => 'publish',
						'category_name' => "contacto",
						'tag' => "arriba",
					] );

					// The Loop
					if ( $the_query->have_posts() ) {
						$the_query->the_post();
					?>				
						<h4><?= the_title(); ?> <span><?= the_excerpt();?></span></h4>		            	
					<?php 
	    				wp_reset_postdata();
	    				}
	    			?>
                <form id="formData">
                    <?=
				   		do_shortcode('[contact-form-7 id="23" title="Formulario Atlas"]');
					?>
                </form>
            </section>
        </article>

    	
    </section>

        </section>
        <!-- /section -->
    </main>

<?php get_footer(); ?>