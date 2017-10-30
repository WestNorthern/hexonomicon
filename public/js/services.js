
// Curse One
$('.add-hex1').on('click', function(){
	localStorage.setItem('hexOne', 1);
	$(this).attr('style', 'background: ghostwhite; color: black;');
	$(this).text('Added');
});

$('.rem-hex1').on('click', function(){
	localStorage.setItem('hexOne', 0);
	$('.add-hex1').attr('style', 'background: black; color: ghostwhite;');
	$('.add-hex1').text('Add');
});
// Curse Two
$('.add-hex2').on('click', function(){
	localStorage.setItem('hexTwo', 1);
	$(this).attr('style', 'background: ghostwhite; color: black;');
	$(this).text('Added');
});

$('.rem-hex2').on('click', function(){
	localStorage.setItem('hexTwo', 0);
	$('.add-hex2').attr('style', 'background: black; color: ghostwhite;');
	$('.add-hex2').text('Add');
});

// Curse Three

$('.add-hex3').on('click', function(){
	localStorage.setItem('hexThree', 1);
	$(this).attr('style', 'background: ghostwhite; color: black;');
	$(this).text('Added');
});

$('.rem-hex3').on('click', function(){
	localStorage.setItem('hexThree', 0);
	$('.add-hex3').attr('style', 'background: black; color: ghostwhite;');
	$('.add-hex3').text('Add');
});

// Curse Four

$('.add-hex4').on('click', function(){
	localStorage.setItem('hexFour', 1);
	$(this).attr('style', 'background: ghostwhite; color: black;');
	$(this).text('Added');
});

$('.rem-hex4').on('click', function(){
	localStorage.setItem('hexFour', 0);
	$('.add-hex4').attr('style', 'background: black; color: ghostwhite;');
	$('.add-hex4').text('Add');
});

// Curse Five

$('.add-hex5').on('click', function(){
	localStorage.setItem('hexFive', 1);
	$(this).attr('style', 'background: ghostwhite; color: black;');
	$(this).text('Added');
});

$('.rem-hex5').on('click', function(){
	localStorage.setItem('hexFive', 0);
	$('.add-hex5').attr('style', 'background: black; color: ghostwhite;');
	$('.add-hex5').text('Add');
});

// Curse Six

$('.add-hex6').on('click', function(){
	localStorage.setItem('hexSix', 1);
	$(this).attr('style', 'background: ghostwhite; color: black;');
	$(this).text('Added');
});

$('.rem-hex6').on('click', function(){
	localStorage.setItem('hexSix', 0);
	$('.add-hex6').attr('style', 'background: black; color: ghostwhite;');
	$('.add-hex6').text('Add');
});




const orderArray = ['hexOne', 'hexTwo', 'hexThree', 'hexFour', 'hexFive', 'hexSix'];


$(function(){

	for (var i = 0; i < 6; i++) {
		if (localStorage.getItem(orderArray[i]) == 1){
			$(`.add-hex${i + 1}`).attr('style', 'background: ghostwhite; color: black;');
			$(`.add-hex${i + 1}`).text('Added');
		} 
	}

	$('#bald_button').on('click', function(){
  	$('#bald_pic_container').show();
  });

  $('#chart_button').on('click', function(){
  	$('#bald_pic_container').hide();
  });

});