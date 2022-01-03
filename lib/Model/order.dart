import 'cart.dart';

class Order {
  final int orderNumber;
  final String deliveryAddress;
  final int bill;
  final String orderStatus;
  final List<CartItem> items;
  //final String deliveryTime;
  //final String extraInfo;

  Order({
    required this.orderNumber,
    required this.deliveryAddress,
    required this.bill,
    required this.orderStatus,
    required this.items,
  });

  static List<Order> dumy_data = [
    Order(
      orderNumber: 24,
      deliveryAddress: "lorem ipsum dolor",
      bill: 2400,
      orderStatus: '',
      items: [
        CartItem(
          id: "0",
          detalis: 'lorem ipsum dolor',
          price: 20,
        ),
        CartItem(
          id: "1",
          detalis: 'lorem ipsum dolor',
          price: 468,
        ),
        CartItem(
          id: "2",
          detalis: 'lorem ipsum dolor',
          price: 500,
        )
      ],
    ),
    Order(
        orderNumber: 24,
        deliveryAddress: "lorem ipsum dolor",
        bill: 2400,
        orderStatus: '',
        items: []),
    Order(
        orderNumber: 24,
        deliveryAddress: "lorem ipsum dolor",
        bill: 2400,
        orderStatus: '',
        items: []),
    Order(
        orderNumber: 24,
        deliveryAddress: "lorem ipsum dolor",
        bill: 2400,
        orderStatus: '',
        items: []),
    Order(
        orderNumber: 24,
        deliveryAddress: "lorem ipsum dolor",
        bill: 2400,
        orderStatus: '',
        items: []),
    Order(
        orderNumber: 24,
        deliveryAddress: "lorem ipsum dolor",
        bill: 2400,
        orderStatus: '',
        items: []),
    Order(
        orderNumber: 24,
        deliveryAddress: "lorem ipsum dolor",
        bill: 2400,
        orderStatus: '',
        items: []),
  ];

  static List<Order> myOrders = [
    Order(
        orderNumber: 24,
        deliveryAddress: "lorem ipsum dolor",
        bill: 2400,
        orderStatus: 'Order Delivered',
        items: []),
    Order(
        orderNumber: 24,
        deliveryAddress: "lorem ipsum dolor",
        bill: 2400,
        orderStatus: 'Order Delivered',
        items: []),
    Order(
        orderNumber: 24,
        deliveryAddress: "lorem ipsum dolor",
        bill: 2400,
        orderStatus: 'Order Pending',
        items: []),
    Order(
        orderNumber: 24,
        deliveryAddress: "lorem ipsum dolor",
        bill: 2400,
        orderStatus: 'Order Pending',
        items: []),
    Order(
        orderNumber: 24,
        deliveryAddress: "lorem ipsum dolor",
        bill: 2400,
        orderStatus: 'Order Pending',
        items: []),
    Order(
        orderNumber: 24,
        deliveryAddress: "lorem ipsum dolor",
        bill: 2400,
        orderStatus: 'Order Not Delivered',
        items: []),
    Order(
        orderNumber: 24,
        deliveryAddress: "lorem ipsum dolor",
        bill: 2400,
        orderStatus: 'Order Not Delivered',
        items: []),
  ];
}
