import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/constants/color.dart';
import 'package:flutter_ui_challenges/constants/layout.dart';
import 'package:flutter_ui_challenges/widgets/default_layout.dart';
import 'package:flutter_ui_challenges/widgets/destination_detail_card.dart';
import 'package:get/get.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultLayout(
        overflow: true,
        overflowBody: Container(
          padding: EdgeInsets.only(top: spacing, left: spacing, right: spacing),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () => Get.back(),
                  ),
                  Expanded(
                    child: Text(
                      "Ticket",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.transparent,
                      size: 24,
                    ),
                    onPressed: null,
                  ),
                ],
              ),
              SizedBox(height: spacing),
              DestinationDetailCard(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: spacing * 2),
                      Text(
                        "Payment",
                        style: Theme.of(context).textTheme.headline6.copyWith(fontWeight: FontWeight.bold, height: 1),
                      ),
                      SizedBox(height: spacing),
                      Text(
                        "Enter Amount",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold, height: 1),
                      ),
                      SizedBox(height: spacing),
                      TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          fillColor: Colors.grey[300],
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(
                            Icons.attach_money_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: spacing),
                      Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(busColor),
                              ),
                              child: SizedBox(
                                height: 30,
                                child: Center(
                                  child: Text(
                                    "Credit Card",
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          SizedBox(
                            height: 30,
                            child: Center(
                              child: Text(
                                "Balance: \$ 84",
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: spacing),
                      Divider(thickness: 2),
                      SizedBox(height: spacing),
                      Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.grey[300],
                                ),
                              ),
                              child: SizedBox(
                                height: 30,
                                child: Center(
                                  child: Text(
                                    "E-Wallet",
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          SizedBox(
                            height: 30,
                            child: Center(
                              child: Text(
                                "Balance: \$ 84",
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: spacing),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            busColor,
                          ),
                        ),
                        child: SizedBox(
                          height: 50,
                          child: Center(
                            child: Text(
                              "Submit",
                              style: Theme.of(context).textTheme.headline6.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
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
