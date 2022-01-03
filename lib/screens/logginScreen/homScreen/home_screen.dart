import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:login/Model/order.dart';
import 'package:login/provider/theme_provider.dart';
import 'package:login/screens/logginScreen/homScreen/widgets/light_dark_switch.dart';
import 'package:login/widgets/order_list_tile.dart';
import 'package:login/widgets/rounded_button.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  final int selectedPage;

  const HomeScreen({Key? key, required this.selectedPage});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? selected;

  @override
  void initState() {
    selected = widget.selectedPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset('images/taboola.png', width: size.width * 0.5),
        actions: const [
          LightDarkSwitch(),
        ],
        centerTitle: true,
        elevation: 0,
      ),
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
            children: [
              Container(
                width: double.infinity,
                height: 60,
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selected = 0;
                        });
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/all_order.png'),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'All Orders',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              selected == 0
                                  ? Container(
                                      height: 2,
                                      width: 75,
                                      margin: EdgeInsets.only(top: 2),
                                      color: Colors.white,
                                    )
                                  : Container(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1.5,
                      height: 45,
                      padding: EdgeInsets.symmetric(vertical: 1),
                      color: Colors.white,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selected = 1;
                          print(selected);
                        });
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/my_orders.png'),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'My Orders',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              selected == 1
                                  ? Container(
                                      height: 2,
                                      width: 75,
                                      margin: EdgeInsets.only(top: 2),
                                      color: Colors.white,
                                    )
                                  : Container(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              (selected == 0)
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: Order.dumy_data.length,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (ctx, index) => OrderListTile(
                          orderItem: Order.dumy_data[index],
                        ),
                      ),
                    )
                  : Expanded(
                      child: ListView.builder(
                        itemCount: Order.myOrders.length,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (ctx, index) => OrderListTile(
                          orderItem: Order.myOrders[index],
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
