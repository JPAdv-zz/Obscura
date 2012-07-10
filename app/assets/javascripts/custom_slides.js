/*
 This are the options that SlidesJS can accept. Obviously, there are more.
 */
$(function(){
	$('#slides').slides({
		preload: true,
		preloadImage: '/assets/img/loading.gif',
		play: 5000,
		pause: 2500,
		effect: 'slide, fade',
       	crossfade: true,
		hoverPause: true,
		slideSpeed: 350,
		slideEasing: "easeInOutQuad"
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

/*
 Makes the buttons look clickable.
 */
$(function (){
	$('.prev, .next').mousedown(function () {
		$(this).css("top", "180px");
		$(this).mouseup(function () {
			$(this).css("top", "177px")
		});
	});
});