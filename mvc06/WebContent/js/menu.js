$(document).ready(function() {
		var menu=$('.menu');
		menu.on('mouseover',function(){
			$('.menu2').css('display','block');
		}).on('mouseout',function(){
			$('.menu2').css('display','none');
		});
	});