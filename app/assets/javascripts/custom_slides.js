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
	$('.prev, .next').hide();

	//Set the event when the mouse hovers the #slides.
	$('#slides').mouseenter(function () {
		$('.prev, .next').fadeTo(500, 1.0);
	}).mouseleave(function () {
		$('.prev, .next').fadeTo(500, 0.0);
	});
});


/*
 Makes the buttons look clickable.

$(function (){
	$('.prev, .next').mousedown(function () {
		//Check which is being clicked and apply properties.
		if ($(this).attr('class') == 'prev') {
			leftStart = "-69px";
			leftMove = "-60px";
		} 
		if ($(this).attr('class') == 'next') {
			leftStart = "900px";
			leftMove = "891px";
		}

		//Move the button.
		$(this).css("left", leftMove);
		$(this).mouseup(function () {
			$(this).css("left", leftStart)
		});
	});
});
*/