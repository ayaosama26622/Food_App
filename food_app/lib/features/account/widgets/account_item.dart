import 'package:flutter/material.dart';
import 'package:food_app/features/account/data/item_account.dart';

class AccountItem extends StatelessWidget {
  const AccountItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: accountItems.length,
      separatorBuilder: (context, index) {
        return const Divider(
          thickness: 1,
          height: 1,
        );
      },
      itemBuilder: (context, index) {
        final item = accountItems[index];
    
        return ListTile(
          leading: Icon(item.icon),
          title: Text(item.title),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {},
        );
      },
    );
  }
}
