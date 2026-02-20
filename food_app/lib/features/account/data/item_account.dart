import 'package:flutter/material.dart';

class AccountItem {
  final String title;
  final IconData icon;

  AccountItem({required this.title, required this.icon});
}

List<AccountItem> accountItems = [
  AccountItem(title: "Orders", icon: Icons.shopping_bag),
  AccountItem(title: "My Details", icon: Icons.person),
  AccountItem(title: "Delivery Address", icon: Icons.location_on),
  AccountItem(title: "Payment Methods", icon: Icons.credit_card),
  AccountItem(title: "Promo Code", icon: Icons.local_offer),
  AccountItem(title: "Notifications", icon: Icons.notifications),
  AccountItem(title: "Help", icon: Icons.help),
  AccountItem(title: "About", icon: Icons.info),
];
