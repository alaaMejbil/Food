import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/order.dart';
import 'package:login/provider/theme_provider.dart';
import 'package:login/screens/orderViewScreen/order_view_screen.dart';
import 'package:login/widgets/rounded_button.dart';
import 'package:provider/provider.dart';

class OrderListTile extends StatelessWidget {
  final Order orderItem;

  const OrderListTile({Key? key, required this.orderItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var tm = Provider.of<ThemeProvider>(context).tm;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: (size.width * 0.5) - 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderItem.orderNumber.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: tm == ThemeMode.light
                                  ? Colors.black87
                                  : Colors.white),
                          children: <TextSpan>[
                            const TextSpan(
                              text: 'Delivery Address: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                //color: Colors.black87
                              ),
                            ),
                            TextSpan(text: orderItem.deliveryAddress),
                          ]),
                    ),
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: tm == ThemeMode.light
                                  ? Colors.black87
                                  : Colors.white),
                          children: <TextSpan>[
                            const TextSpan(
                              text: 'Bill:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                //color: Colors.black87
                              ),
                            ),
                            TextSpan(text: orderItem.bill.toString()),
                          ]),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  if (orderItem.orderStatus != "")
                    orderStatusResult(orderItem.orderStatus),
                  const SizedBox(
                    height: 10,
                  ),
                  RoundedButton(
                    title: "view order",
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderViewScreen(
                                    orderItem: orderItem,
                                  )));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 1,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.black12,
            boxShadow: [
              BoxShadow(
                blurRadius: 8,
                offset: Offset(0, 5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/*



 */
class OrderDelivered extends StatelessWidget {
  const OrderDelivered({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.check,
          size: 20,
          color: Color(0xff3AAD26),
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          'Order Delivered',
          style: TextStyle(
            color: Color(0xff3AAD26),
            fontSize: 16,
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
    return Row(
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
            fontSize: 16,
            fontWeight: FontWeight.bold,
            shadows: [],
          ),
        ),
      ],
    );
  }
}

class OrderNotDelivered extends StatelessWidget {
  const OrderNotDelivered({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Order Not Delivered',
      style: TextStyle(
        color: Color(0xffD52020),
        fontSize: 16,
        fontWeight: FontWeight.bold,
        shadows: [],
      ),
    );
  }
}

Widget orderStatusResult(String orderStatus) {
  if (orderStatus == "Order Delivered") return OrderDelivered();
  if (orderStatus == "Order Pending") return OrderPending();
  if (orderStatus == "Order Not Delivered")
    return OrderNotDelivered();
  else
    return Container();
}
