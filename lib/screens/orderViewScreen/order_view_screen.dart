import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/order.dart';
import 'package:login/provider/theme_provider.dart';
import 'package:login/screens/orderViewScreen/widgets/order_details.dart';
import 'package:login/screens/orderViewScreen/widgets/order_statis_results.dart';
import 'package:login/screens/orderViewScreen/widgets/order_view_appbar.dart';
import 'package:login/screens/orderViewScreen/widgets/other_reason.dart';
import 'package:login/screens/orderViewScreen/widgets/other_reason_test_field.dart';
import 'package:login/screens/orderViewScreen/widgets/user_details.dart';
import 'package:login/screens/orderViewScreen/widgets/yes_form.dart';
import 'package:login/widgets/borderd_button.dart';
import 'package:login/widgets/details_bottun.dart';
import 'package:login/widgets/icon_with_reason.dart';
import 'package:login/widgets/icon_with_text.dart';
import 'package:login/widgets/rounded_button.dart';
import 'package:provider/provider.dart';

import '../logginScreen/homScreen/home_screen.dart';

class OrderViewScreen extends StatefulWidget {
  final Order orderItem;

  const OrderViewScreen({Key? key, required this.orderItem}) : super(key: key);

  @override
  State<OrderViewScreen> createState() => _OrderViewScreenState();
}

class _OrderViewScreenState extends State<OrderViewScreen> {
  bool showOrderQuestion = false;
  String questionAnswer = "";
  int selectedReasonIndex = -1;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var tm = Provider.of<ThemeProvider>(context).tm;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: getAppBar(context),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppBarDivider(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          child: const Text(
                            'Order No. 12',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DetailsButton(title: 'Order Details', onPress: () {}),
                          FlatButton(
                              onPressed: () {},
                              child: const Text(
                                'CONTACT RESTURANT',
                                style: TextStyle(color: Color(0xffD52020)),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      OrderDetails(),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text(
                                'Item',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Details',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Price',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ...List.generate(3, (index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  'Item',
                                ),
                                Text(
                                  'Details',
                                ),
                                Text(
                                  'Price',
                                ),
                              ],
                            );
                          }),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            child: Divider(
                              color: Colors.black,
                              height: 3,
                              thickness: 1,
                            ),
                          ),
                          Text(
                            'TOTAL      5900',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DetailsButton(title: 'User Details', onPress: () {}),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'CONTACT USER',
                              style: TextStyle(color: Color(0xffD52020)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      UserDetails(),
                      const SizedBox(
                        height: 20,
                      ),
                      if (widget.orderItem.orderStatus != "")
                        Center(
                          child: DetailsButton(
                              onPress: () {}, title: 'ORDER STATUS'),
                        ),
                      const SizedBox(
                        height: 30,
                      ),
                      (!showOrderQuestion && widget.orderItem.orderStatus == "")
                          ? Center(
                              child: RoundedButton(
                                title: 'Pick order',
                                onPress: () {
                                  setState(() {
                                    showOrderQuestion = true;
                                  });
                                },
                              ),
                            )
                          : Container(),
                      if (widget.orderItem.orderStatus != "")
                        orderStatusResult(widget.orderItem.orderStatus),
                      const SizedBox(
                        height: 30,
                      ),
                      if (showOrderQuestion)
                        Row(
                          children: [
                            const Text(
                              'Order delivered?',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 10),
                            BorderButton(
                              title: 'Yes',
                              isPressed: questionAnswer == "yes",
                              onPress: () {
                                setState(() {
                                  questionAnswer = "yes";
                                });
                              },
                            ),
                            BorderButton(
                              title: 'No',
                              isPressed: questionAnswer == "no",
                              onPress: () {
                                setState(() {
                                  questionAnswer = "no";
                                });
                              },
                            ),
                          ],
                        ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (questionAnswer == 'yes') YesForm(),
                      if (questionAnswer == 'no')
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              width: size.width,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: tm == ThemeMode.light
                                    ? const Color(0xffF2F0F0)
                                    : Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Please select reason:',
                                    style: TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 1.1,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  ...List.generate(
                                    3,
                                    (index) => IconWithReason(
                                      text: 'lorem ipsum dolor',
                                      reasonIndex: index,
                                      selectedReasonIndex: selectedReasonIndex,
                                      onTap: () {
                                        setState(() {
                                          selectedReasonIndex = index;
                                        });
                                      },
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedReasonIndex = -2;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            'images/tomato.png',
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          OtherReason(
                                              selectedReasonIndex:
                                                  selectedReasonIndex),
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (selectedReasonIndex == -2)
                                    OtherReasonTextField(),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                            if (selectedReasonIndex != -1)
                              RoundedButton(
                                title: 'Submit',
                                onPress: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomeScreen(
                                        selectedPage: 1,
                                      ),
                                    ),
                                  );
                                },
                              ),
                          ],
                        ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
