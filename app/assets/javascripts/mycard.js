/* 
 A function that flips a card. 
 */
$(document).ready(function(){

	//$('.flip').hide().fadeIn(2000);
	$('.flip').on('click', function(){
		$(this).find('.card').toggleClass('flipped');
    });
 });
