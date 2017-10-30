class Cart {

	constructor(cursed, order){
		this.cursed = cursed;
		this.order = order;
	}


	emptyCart(){

	}
}


$(document).ready(){

	let hexOne = localStorage.getItem('hexOne');
	let hexOne = localStorage.getItem('hexTwo');
	let hexOne = localStorage.getItem('hexThree');
	let hexOne = localStorage.getItem('hexFour');
	let hexOne = localStorage.getItem('hexFive');
	let hexOne = localStorage.getItem('hexSix');

	let orderArray = [hexOne, hexTwo, hexThree, hexFour, hexFive, hexSix];

	let cursed = localStorage.getItem('curseName');

	let curseCart = new Cart(cursed, orderArray);

	
}