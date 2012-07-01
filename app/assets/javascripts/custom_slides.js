/*
 This are the options that SlidesJS can accept. Obviously, there are more.
 */
$(function(){
	$('#slides').slides({
		preload: true,
		preloadImage: '/img/loading.gif',
		play: 5000,
		pause: 2500,
		effect: 'slide, fade',
       	crossfade: true,
		hoverPause: true
	});	
});

/* 
 Shows and hides the controls of the slideshow upon the mouse hovering the
 slideshow. Note: I believe SlidesJS does not currently support this.
 */
$(function (){
	// Hide the controls.
	$('.prev, .next, .pagination').hide();

	//Set the event when the mouse hovers the #slides.
	$('#slides').mouseenter(function () {
		$('.prev, .next, .pagination').fadeTo(500, 1.0);
	}).mouseleave(function () {
		$('.prev, .next, .pagination').fadeTo(500, 0.0);
	});
});