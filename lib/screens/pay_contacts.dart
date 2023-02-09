import 'package:flutter/material.dart';
import 'package:u_pay_app/screens/payment.dart';

import '../components/input_field.dart';
import '../components/rounded_button.dart';

class PayContact extends StatelessWidget{

  late String number;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff24B3A8),
        title: Text("Enter a phone number"),
      ),
      body: Container(
        child: Container(
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.fromLTRB(25.0,50.0,25.0,0.0),
                child: InputField(
                  hintText: '0000000000',
                  onChanged: (value) {
                    number = value;
                  },
                  fieldIcon: Icon(Icons.account_box_outlined),
                ),
              ),
            ],
          ),
        ),

      ),
                  bottomNavigationBar: Container(
                  padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 50.0),
                  child: RoundedButton(
                      Colour: Color(0xff24B3A8),
                      Name: 'Continue',
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Payment()));
                      })
                  ),


    );
  }

}