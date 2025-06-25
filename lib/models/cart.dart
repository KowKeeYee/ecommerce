import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike Air Force',
      price: '288',
      imagePath: 'lib/images/custom-nike-air-force-1-mid.png',
      description: 'The forward-thinking design',
    ),
    Shoe(
      name: 'Nike Waffle',
      price: '200',
      imagePath: 'lib/images/NIKE+WAFFLE+NAV.png',
      description: 'Hops and Speed-lace up',
    ),
    Shoe(
      name: 'Nike BLAZER',
      price: '200',
      imagePath: 'lib/images/BLAZER+MID.png',
      description: 'Secure midfoot strap',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
