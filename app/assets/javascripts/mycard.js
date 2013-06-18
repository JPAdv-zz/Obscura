/* 
 A function that flips a card. 
 */
$(document).ready(function(){

	$('.flip').hide().fadeIn(1000);
	$('.flip.card').hide().slideDown(500);
	$('.flip').click(function(){
		$(this).find('.card').toggleClass('flipped');
    });
 });
