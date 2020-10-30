import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';


import 'package:hexcolor/hexcolor.dart';


class My2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CreditCard(
        cardNumber: "5450 7879 4864 7854",
        cardExpiry: "10/25",
        cardHolderName: "Siddhant Tiwari",
        cvv: "456",
        bankName: "Shera Bank",
        cardType: CardType.masterCard, // Optional if you want to override Card Type
        showBackSide: false,
        frontBackground: CardBackgrounds.black,
        backBackground: CardBackgrounds.white,
        showShadow: true,
      ),
    );
  }
}
