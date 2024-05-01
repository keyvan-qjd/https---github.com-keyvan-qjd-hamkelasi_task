import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ForgottenPassword extends StatelessWidget {
  const ForgottenPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("بازیابی رمز عبور"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 900,
            color: Colors.teal.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "بازیابی رمز عبور",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    "لطفا جهت دریافت رمز عبور کد ملی یا شماره تلفن خود را وارد کنید",
                    style: Theme.of(context).textTheme.titleMedium,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 340,
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        fillColor:
                            Colors.white, // Change this to your desired color
                        filled: true,
                        hintText: "کد ملی یا شماره تلفن همراه",
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 400,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('دریافت پیامک عبور'),
                            style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(
                                  color:
                                      Colors.white), // Text color set to white

                              backgroundColor: Colors.teal.shade500,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Border radius of 4
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
