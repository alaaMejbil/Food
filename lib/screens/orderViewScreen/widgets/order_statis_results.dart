import 'package:flutter/material.dart';

class OrderDelivered extends StatelessWidget {
  const OrderDelivered({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.check,
          size: 25,
          color: Color(0xff3AAD26),
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          'Order Delivered',
          style: TextStyle(
            color: Color(0xff3AAD26),
            fontSize: 18,
            fontWeight: FontWeight.bold,
            shadows: [],
          ),
        ),
      ],
    );
  }
}

class OrderPending extends StatelessWidget {
  const OrderPending({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.alarm,
            size: 20,
            color: Color(0xffF8A90A),
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            'Order Pending',
            style: TextStyle(
              color: Color(0xffF8A90A),
              fontSize: 18,
              fontWeight: FontWeight.bold,
              shadows: [],
            ),
          ),
        ],
      ),
    );
  }
}

class OrderNotDelivered extends StatelessWidget {
  const OrderNotDelivered({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Order Not Delivered',
        style: TextStyle(
          color: Color(0xffD52020),
          fontSize: 18,
          fontWeight: FontWeight.bold,
          shadows: [],
        ),
      ),
    );
  }
}

Widget orderStatusResult(String orderStatus) {
  if (orderStatus == "Order Delivered") return const OrderDelivered();
  if (orderStatus == "Order Pending") return const OrderPending();
  if (orderStatus == "Order Not Delivered") {
    return const OrderNotDelivered();
  } else {
    return Container();
  }
}
