import 'package:flutter/material.dart';
import 'package:u_pay_app/screens/payment.dart';

import '../components/input_field.dart';
import '../components/rounded_button.dart';

class PayUpi extends StatelessWidget {
  late String UPI;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff24B3A8),
        title: Text("Pay Using UPI ID"),
      ),
      body: Container(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 0.0),
                child: InputField(
                  hintText: 'Enter your UPI ID',
                  onChanged: (value) {
                    UPI = value;
                  },
                  fieldIcon: Icon(Icons.account_balance_wallet_outlined),
                ),
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 50.0),
              child:RoundedButton(
                      Colour: Color(0xff24B3A8),
                      Name: 'Continue',
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Payment()));
                      }),
        ),

    );
  }
}
