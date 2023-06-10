import 'help.dart';
import '../constants/colors.dart';
import '../constants/inputBox.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:counsellor_mobile_app/view/profile_personal.dart';




class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                child: SvgPicture.asset('assets/images/payment.svg'),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'UPI',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    InputBox(
                        title: "Your UPI ID", hintText: "Enter your UPI ID"),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Debit Card',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    InputBox(
                        title: "Card Number",
                        hintText: "Enter your Card Number"),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InputBox(
                                  title: "Expiry Date",
                                  hintText: "Expiry Date")
                            ],
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InputBox(
                                  title: "CVV",
                                  hintText: "CVV")
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    FractionallySizedBox(
                      widthFactor: 1.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePersonal()),
                          );
                        },
                        child: Text('Continue',
                            style: TextStyle(color: AppColors.darkBlue)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.blue,
                            side: const BorderSide(
                              width: 1.0,
                              color: AppColors.darkBlue,
                            )),
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: 1.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HelpView()),
                          );
                        },
                        child: Text(
                          'Cancle',
                          style: TextStyle(color: AppColors.darkBlue),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.grey,
                            side: const BorderSide(
                              width: 1.0,
                              color: AppColors.darkGrey,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
