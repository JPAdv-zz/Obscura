/* 
 A function that flips a card. 
 */
$(document).ready(function(){
	$('.flip').click(function(){
		$(this).find('.card').toggleClass('flipped');
    });
 });
