$(function(){
			$('#slides').slides({
				preload: true,
				preloadImage: 'img/loading.gif',
				play: 5000,
				pause: 2500,
				effect: 'slide, fade',
        		crossfade: true,
				hoverPause: true
			});
		});