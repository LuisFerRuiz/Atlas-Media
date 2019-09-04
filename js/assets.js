$ = jQuery.noConflict();
$.fn.extend({
    animateCss: function (animationName) {
		"use strict";
        var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
        this.addClass('animated ' + animationName).one(animationEnd, function() {
            $(this).removeClass('animated ' + animationName);
			$(this).trigger("animationEnd");
        });
    }
});




$(document).ready(function() {
	
	"use strict";

	$('main').append('<div class="envelope"></div>');


	$(window).on('load',function(){
		//setTimeout(function(){
			$('#preloader').fadeOut();	
		//},1500);
	});


	
	
	var funResize = function(){
		
		var wdW = $(window).width();
		var wdH = $(window).height();
		
		//var socLinks = a;
		
		if(wdW <= 736 && wdW > wdH){//moblandscape
			$('body').removeAttr('class');
			$('body').addClass('mobile-lands');
			
		
		}
		else if(wdW <= 736 && wdW < wdH){//mobportrait
			$('body').removeAttr('class');
			$('body').addClass('mobile-port');
			
			
		
		}
		else if(wdW >= 736 && wdW < wdH){//tabletport
			$('body').removeAttr('class');
			$('body').addClass('tablet-port');
			
		
		}
		else if(wdW >= 736 && wdW > wdH && wdW < 1100){//tabletland
			$('body').removeAttr('class');
			$('body').addClass('tablet-land');
			
		
		}
		else{
			$('body').removeAttr('class');
			$('body').addClass('normalize');
			
			
		}
	};
	
	
	funResize();
	
	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) === true) {
		$('html').addClass('mobile');
		
		
		
		
	}else{

	}//eventos desktop
	
	
	
	
	
	
	

	
	
	
	
	//para explorer
	/*if (/MSIE 10/i.test(navigator.userAgent)) {
		// This is internet explorer 10
		console.log('isIE10');
	}*/
	/*if (/MSIE 9/i.test(navigator.userAgent)) {
	// This is internet explorer 9 or 11
		console.log = 'pages/core/ie.htm';
	}
	if (/Edge\/\d./i.test(navigator.userAgent)){
	// This is Microsoft Edge
		console.log('Microsoft Edge');
	}*/
	if (/Trident\/|MSIE/.test(window.navigator.userAgent) || /MSIE 9/i.test(navigator.userAgent) || /Edge\/\d./i.test(navigator.userAgent)) {
		// This is internet explorer 11

	}
	
	
	

	
	
	
	
	
	$('.open_nav').click(function(e){
		e.preventDefault();	
		$(this).toggleClass('active');
		$('nav').toggleClass('nav_open');
	});
	
	$('nav a').each(function(i,e){
		$(this).click(function(e){
			$('.open_nav').trigger('click');
			e.preventDefault();
			var id = $(this).attr('href');
			var goto = $(''+id+'').offset().top - $('header').height();

			$("html, body").stop().animate({
				scrollTop: goto
			},500,'swing',function(){ 
				console.log('close nav');
			});
		});
		
	});

	var imgBack = $('.home figure img').attr('data-src');
	$('.home figure').css('background-image','url('+imgBack+')');
	$('.nosotros figure').css('background-image','url('+imgBack+')');


	var wh = $(window).height() - 10;
	$('.home').height(wh);
	$('.nosotros').height(wh);


	//$('.home figure').each(function() {
      $(window).scroll(function() {
        var x = $(window).scrollTop();
        $('.home figure').css('background-position', 'center ' + parseInt(x * 0.5) + 'px');
      }); 
    //});

	
		
		
		
		$("#formData").submit(function(e) {
		
			var url = "mailer.php"; 
		
			$.ajax({
				   type: "POST",
				   url: url,
				   data: $("#formData").serialize(),
				   success: function(){
				   		console.log('fine');
					   $('.lightbox').addClass('view success');
					   $("#formData input,#formData textarea").val('');
				   },
				   error: function(){
				   		console.log('asda');
					   $('.lightbox').addClass('view error');
					   
					}
				 });
		
			e.preventDefault(); 
		});
		
		
		
		$('.open_form').click(function(e) {
			e.preventDefault();
			$('.lightbox').lightbox_me({
				centered: true, 
					
			});
		});
		
		
		
		
		
		
			
	
	
	
		
		
		
		
		
	var resizeTimer;
	
	$(window).on('resize', function() {
	
		clearTimeout(resizeTimer);
		resizeTimer = setTimeout(function() {	
			// Run code here, resizing has "stopped"
			
			
			funResize();
			
				var wh = $(window).height() - 10;
				$('.home').height(wh);
				$('.nosotros').height(wh);

			
			
			
			$(window).trigger('scroll');
			
		}, 250);


	});
	
	
	
	

	
	$('.lightbox .close').click(function(e){
		e.preventDefault();
		$('.lightbox').removeClass('view success error');
	});


	$('.flex_services div').each(function(index, element) {
		$(this).css('animation-delay',''+(index*0.1)+'s');
		$(this).one('inview', function(event, isInView) {
		  if (isInView) {
		  	//setTimeout(function(){
		  		$(this).addClass('animated fadeInUp');
		  	//},100);
		  }
		});
	});


	$('.nosotros_intro p').one('inview', function(event, isInView) {
	  if (isInView) {
		$(this).addClass('animated fadeInUp');
	  } else {
	  }
	});
	$('.nosotros_intro small').one('inview', function(event, isInView) {
	  if (isInView) {
		$(this).addClass('animated fadeInUp');
	  } else {
	  }
	});


	$('.nosotros_info h4').one('inview', function(event, isInView) {
	  if (isInView) {
		$(this).addClass('animated fadeInRight');
	  } else {
	  }
	});
	$('.nosotros_info p').one('inview', function(event, isInView) {
	  if (isInView) {
		$(this).addClass('animated fadeInRight');
	  } else {
	  }
	});


	$('.contacto h4').one('inview', function(event, isInView) {
	  if (isInView) {
		$(this).addClass('animated fadeInUp');
	  } else {
	  }
	});
	$('.contacto form').one('inview', function(event, isInView) {
	  if (isInView) {
		$(this).addClass('animated fadeInUp');
	  } else {
	  }
	});
	
	
	
		// $(this).one('inview', function(event, isInView) {
		//   if (isInView) {
		//     // element is now visible in the viewport
		    
		//     //paginas.start();
		// 	$(this).css({
		// 		'opacity':'1',
		// 	}).animateCss('fadeInUp');


		//   } else {
		//     // element has gone out of viewport
		//   }
		// });

		// $(this).click(function(e){

		// 	console.log('adsaa');
		// 	e.preventDefault();
		// 	//var url = $(this).attr('href');
		// 	var data = $(this).html();

		// 	$('.lightbox .content_light').append(data);

		// 	$('.lightbox').lightbox_me({
		// 			closeClick:true,
		// 			destroyOnClose:false,
		// 			closeSelector:".close",
		// 			overlayCSS:{
		// 				background: '#fff', 
		// 				opacity: .8
		// 			},
		// 			onLoad:function(){
		// 			},
		// 			onClose:function(){
		// 				$('.lightbox .content_light').empty();
		// 			},
		// 		});
		// });
	

	
	
});