import 'package:flutter/material.dart';
import 'package:login/widgets/icon_with_text.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        IconWithText(text: 'Delivery Address: lorem ipsum dolor'),
        IconWithText(text: 'Items: item1, item2, item3..'),
        IconWithText(text: 'Bill: 5900'),
        IconWithText(text: 'Delivery Time: 50 mins'),
        IconWithText(text: 'Extra Info: lorem ipsum dolor..'),
      ],
    );
  }
}
