/* var addedItems = [];

if (document.readyState == 'loading') {
    document.addEventListener('DOMContentLoaded', ready)
} else {
    ready()
}

function ready() {
    var removeButtons = document.getElementsByClassName('btnremove');
    for (var i = 0; i < removeButtons.length; i++) {
        var removeButton = removeButtons[i];
        removeButton.addEventListener('click', removeCartItem) 
    }
    

    var quantityInputs = document.getElementsByClassName('cartquant');
    for (var i = 0; i < quantityInputs.length; i++) {
        var input = quantityInputs[i];
        input.addEventListener('change', quantityChange);
    }

    var addToCartButtons = document.getElementsByClassName('btn');
    for (var i = 0; i < addToCartButtons.length; i++) {
        var addCartButton = addToCartButtons[i];
        addCartButton.addEventListener('click', addToCartClicked);
    }
    document.getElementsByClassName('btnpur')[0].addEventListener('click',purchaseclicked)
}

function purchaseclicked(event){
    alert('Thank you for purchase')
    var carite = document.getElementsByClassName('cartitems')[0]
    while(carite.hasChildNodes()){
        carite.removeChild(carite.firstChild)
    }
    updateCartTotal()
}
function removeCartItem(event){
    var eventButton = event.target;
    eventButton.parentElement.parentElement.remove();
    alert('Removing from cart');
    updateCartTotal();
}

function quantityChange(event) {
    var input = event.target;
    if (isNaN(input.value) || input.value <= 0) {
        alert('Quantity is not valid. Minimum is 1');
        input.value = 1;
    }
    updateCartTotal();
}

function addToCartClicked(event) {
    var buttonClicked = event.target;
    var item = buttonClicked.parentElement.parentElement;
    var title = item.querySelector('.title').innerText;
    var priceText = item.querySelector('.price').innerText;
    if (buttonClicked.innerText === "Description") {
        var petSpecs = item.querySelector('.pet-specs');
        petSpecs.style.display = "block";
        document.body.addEventListener("click", function hideDetailsOnClick(event) {
            // Check if the clicked element is not the "Description" button or the details section.
            if (event.target !== buttonClicked && event.target !== petSpecs) {
                petSpecs.style.display = "none";
                // Remove the click event listener to avoid multiple event listeners.
                document.body.removeEventListener("click", hideDetailsOnClick);
            }
        });

        return;
    }

   if(addedItems.includes(title)){
    alert("Item is already in cart");
    return;
   }
    addedItems.push(title)
    var price = parseFloat(priceText.match(/\d+/)); // Extract the price as a number
    var image = item.querySelector('.image').src;

    addFinalCart(title, price, image);
    updateCartTotal();
}


function addFinalCart(title, price, image) {
    var cartRow = document.createElement('div');
    cartRow.classList.add('totalcart');
    var cartItems = document.getElementsByClassName('cartitems')[0];
    var cartTitles = cartItems.getElementsByClassName('carttitle');
    
    for (var i = 0; i < cartTitles.length; i++) {
        if (cartTitles[i].innerText === title) {
            alert("Item is already in the cart");
            return;
        }
    }

    var cartRowContents = `
      <div class="pricecart">
        <img src="${image}" width="70" height="70">
        <span style="padding-left: 10px;">${title}</span>
        <span style="padding-left: 145px;padding-top: 5px;" class="cartprice">${price}</span>
      </div>
      <div class="quant">
        <input type="number" class="cartquant" value="1">
        <button class="btnremove" type="button">Remove</button>
      </div>`;

    cartRow.innerHTML = cartRowContents;
    cartItems.appendChild(cartRow);
    cartRow.getElementsByClassName('btnremove')[0].addEventListener('click', removeCartItem )
    cartRow.getElementsByClassName('cartquant')[0].addEventListener('click', quantityChange)
}

function updateCartTotal() {
    var cartItems = document.getElementsByClassName('cartitems')[0];
    var cartRows = cartItems.getElementsByClassName('totalcart');
    var total = 0;

    for (var i = 0; i < cartRows.length; i++) {
        var cartRow = cartRows[i];
        var priceElement = cartRow.querySelector('.cartprice');
        var quantityElement = cartRow.querySelector('.cartquant');
        var priceText = priceElement.innerText;
        var price = parseFloat(priceText.match(/\d+/)); // Extract the price as a number
        var quantity = parseInt(quantityElement.value);
        total += price * quantity;
    }

    if (!isNaN(total)) {
        document.querySelector('.tot').innerText = total;
    } else {
        document.querySelector('.tot').innerText = '0';
    }
}



*/

var addedItems = [];

if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', ready);
} else {
    ready();
}

function ready() {
    var removeButtons = document.getElementsByClassName('btnremove');
    for (var i = 0; i < removeButtons.length; i++) {
        var removeButton = removeButtons[i];
        removeButton.addEventListener('click', removeCartItem);
    }

    var quantityInputs = document.getElementsByClassName('cartquant');
    for (var i = 0; i < quantityInputs.length; i++) {
        var input = quantityInputs[i];
        input.addEventListener('change', quantityChange);
    }

    var addToCartButtons = document.getElementsByClassName('btn');
    for (var i = 0; i < addToCartButtons.length; i++) {
        var addCartButton = addToCartButtons[i];
        addCartButton.addEventListener('click', addToCartClicked);
    }

    document.getElementsByClassName('btnpur')[0].addEventListener('click', purchaseClicked);
}

function purchaseClicked(event) {
    alert('Thank you for adopting!');
    var cartItems = document.getElementsByClassName('cartitems')[0];
    while (cartItems.hasChildNodes()) {
        cartItems.removeChild(cartItems.firstChild);
    }
    updateCartTotal();
}

function removeCartItem(event) {
    var buttonClicked = event.target;
    var itemName = buttonClicked.parentElement.previousElementSibling.querySelector('span').innerText;
    addedItems = addedItems.filter(item => item !== itemName);
    buttonClicked.parentElement.parentElement.remove();
    alert('Removed from cart');
    updateCartTotal();
}

function quantityChange(event) {
    var input = event.target;
    if (isNaN(input.value) || input.value <= 0) {
        alert('Quantity is not valid. Minimum is 1');
        input.value = 1;
    }
    updateCartTotal();
}

function addToCartClicked(event) {
    var buttonClicked = event.target;
    var item = buttonClicked.parentElement.parentElement;
    var title = item.querySelector('.title').innerText;

    if (addedItems.includes(title)) {
        alert('This pet is already in the cart');
        return;
    }

    addedItems.push(title);
    var image = item.querySelector('.image').src;

    addFinalCart(title, image);
}

function addFinalCart(title, image) {
    var cartRow = document.createElement('div');
    cartRow.classList.add('totalcart');
    var cartItems = document.getElementsByClassName('cartitems')[0];

    var cartRowContents = `
      <div class="pricecart">
        <img src="${image}" width="70" height="70">
        <span style="padding-left: 10px;" class="carttitle">${title}</span>
      </div>
      <div class="quant">
        <input type="number" class="cartquant" value="1">
        <button class="btnremove" type="button">Remove</button>
      </div>`;

    cartRow.innerHTML = cartRowContents;
    cartItems.appendChild(cartRow);

    cartRow.getElementsByClassName('btnremove')[0].addEventListener('click', removeCartItem);
    cartRow.getElementsByClassName('cartquant')[0].addEventListener('change', quantityChange);
}

function updateCartTotal() {
    var cartItems = document.getElementsByClassName('cartitems')[0];
    var cartRows = cartItems.getElementsByClassName('totalcart');
    var totalQuantity = 0;

    for (var i = 0; i < cartRows.length; i++) {
        var cartRow = cartRows[i];
        var quantityElement = cartRow.querySelector('.cartquant');
        var quantity = parseInt(quantityElement.value);
        totalQuantity += quantity;
    }

    document.querySelector('.tot').innerText = totalQuantity || '0';
}


