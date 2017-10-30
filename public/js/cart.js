const orderArray = ['hexOne', 'hexTwo', 'hexThree', 'hexFour', 'hexFive', 'hexSix'];
const curseNameArray = ['Financial Ruin Curse', 'Barren Head Curse', 'Flatulence Jinx', 'The Odorous Ordeal', 'Plague of Powerlessness', 'Curse of the Earworm'];
const priceArray = [1000, 2000, 3000, 4000, 5000, 6000];

class Cart {

	constructor(order){
		this.order = order;
		this.displayCart();
	}


	displayCart(){
		let total = 0
		for (let i = 0; i < this.order.length; i++) {
			if (localStorage.getItem(this.order[i]) > 0){
				$('#curseCol').append(`<div class="col" style="background: black; color: ghostwhite">${curseNameArray[i]}</div>`);
				$('#priceCol').append(`<div class="col" style="background: black; color: ghostwhite">${priceArray[i]}</div>`);
				total += priceArray[i];
				// $('removeCol').append(`<div class="btn-group btn-group-sm" role="group" aria-label="...">Remove</div>`);
			}
		}
		$('#subTotal').html(`<strong>$${total}.00</strong>`);
	}
	emptyCart(){
		for (var i = 0; i < this.order.length; i++) {
			localStorage.setItem(this.order[i], 0)
		}
		$('#curseCol').empty();
		$('#priceCol').empty();
		this.displayCart();
	}
}


$(document).ready(function(){

	for (var i = 0; i < orderArray.length; i++) {
		if (localStorage.getItem(orderArray[i]) === null){
			localStorage.setItem(orderArray[i], 0)
		} 
	}

	let curseCart = new Cart(orderArray);

	$('#emptyCart').click(function(){
		curseCart.emptyCart();
	});

});