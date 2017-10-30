const curseNameArray = ['Financial Ruin', 'Song Stuck in their Head', 'Tribute', 'Filler for now', 'Always forgetting where the remote is', 'blah, blah, blah'];
const priceArray = [1000, 2000, 3000, 4000, 5000, 6000];

class Cart {

	constructor(cursed, order){
		this.cursed = cursed;
		this.order = order;
	}

	displayCart(){
		for (let i = 0; i < this.order.length; i++) {
			if (this.order[i] > 0){
				$('#curseCol').append(`<div class="col" style="background: black; color: ghostwhite">${curseNameArray[i]}:</div>`);
				$('#quantCol').append(`<div class="col" style="background: black; color: ghostwhite">${this.order[i]}:</div>`);
				$('#priceCol').append(`<div class="col" style="background: black; color: ghostwhite">${priceArray[i]}:</div>`);
			}
		}
	}
	emptyCart(){

	}
}


$(document).ready(function(){
	localStorage.setItem('hexOne', 1);
	localStorage.setItem('hexThree', 1);
	localStorage.setItem('hexTwo', 1);
	localStorage.setItem('hexFour', 1);
	localStorage.setItem('hexFive', 1);
	localStorage.setItem('hexSix', 1);
	let hexOne = localStorage.getItem('hexOne');
	let hexTwo = localStorage.getItem('hexTwo');
	let hexThree = localStorage.getItem('hexThree');
	let hexFour = localStorage.getItem('hexFour');
	let hexFive = localStorage.getItem('hexFive');
	let hexSix = localStorage.getItem('hexSix');

	let orderArray = [hexOne, hexTwo, hexThree, hexFour, hexFive, hexSix];

	let cursed = localStorage.getItem('curseName');

	let curseCart = new Cart(cursed, orderArray);

	curseCart.displayCart();


	
});