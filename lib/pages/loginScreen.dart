import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hamkelasi/main.dart';
import 'package:hamkelasi/pages/forgotPassScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homeScreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMe = false;

  Future<void> _saveUserInfo(String username, String password) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('username', username);
    prefs.setString(
        'password', password); // **Note:** Implement hashing for secure storage
  }

  Future<void> _clearUserInfo() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('username');
    prefs.remove('password');
  }

  Future<bool> _hasUserInfo() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('username');
  }

  Future<void> _getUserInfo() async {
    final prefs = await SharedPreferences.getInstance();
    if (await _hasUserInfo()) {
      _usernameController.text = prefs.getString('username')!;
      _passwordController.text = prefs.getString('password')!;
    }
  }

  @override
  void initState() {
    super.initState();
    _getUserInfo();
    // if (_usernameController?.text?.isEmpty ?? false) {
    //   Get.to(HomePage());
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text('صفحه ورود'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 850,
            color: Colors.teal.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 340,
                      child: TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r"[a-zA-Z0-9]"))
                        ],
                        controller: _usernameController,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          // errorText: _usernameController.text.isEmpty ||
                          //         RegExp(r"[^a-zA-Z0-9]")
                          //             .hasMatch(_usernameController.text)
                          //     ? null
                          //     : 'لطفا حرف یا عدد انگلیسی وارد کنید',

                          fillColor:
                              Colors.white, // Change this to your desired color
                          filled: true,
                          hintText: "نام کاربری خود را وارد کنید",
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        validator: (value) {
                          if (value!.length < 6 && value!.length > 0) {
                            return 'نام کاربری باید حداقل ۶ حرف باشد';
                          } else if (value.length > 32) {
                            return 'نام کاربری نباید بیشتر از ۳۲ حرف باشد';
                          } else if (value == null || value.isEmpty) {
                            return 'لطفا نام کابری را وارد کنید';
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 340,
                      child: TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r"[a-zA-Z0-9]"))
                        ],
                        controller: _passwordController,
                        obscureText: true,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          fillColor:
                              Colors.white, // Change this to your desired color
                          filled: true,
                          hintText: "رمز عبور خود را وارد کنید",
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        validator: (value) {
                          if (value!.length < 6 && value!.length > 0) {
                            return 'رمز عبور باید حداقل ۶ حرف باشد';
                          } else if (value.length > 32) {
                            return 'رمز عبور نباید بیشتر از ۳۲ حرف باشد';
                          } else if (value == null || value.isEmpty) {
                            return 'لطفا رمز عبور را وارد کنید';
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Checkbox(
                            value: _rememberMe,
                            onChanged: (value) =>
                                setState(() => _rememberMe = value!),
                          ),
                          Text(
                            '‌ذخیره ی رمز عبور',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    InkWell(
                      onTap: () {
                        Get.to(ForgottenPassword());
                      },
                      child: Text(
                        " فراموشی رمز عبور؟ ",
                        style: TextStyle(color: Colors.teal.shade500),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                // Simulate login process (replace with actual login logic)
                                await Future.delayed(
                                    const Duration(seconds: 1));
                                Get.to(HomePage());
                                if (_rememberMe) {
                                  await _saveUserInfo(_usernameController.text,
                                      _passwordController.text);
                                } else {
                                  await _clearUserInfo();
                                }
                                // Navigate to home page after successful login
                                Navigator.pushReplacementNamed(
                                    context, '/home');
                              }
                            },
                            child: Text('ورود به همکلاسی'),
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

                    //login button
                    // ElevatedButton(
                    //   onPressed: () async {
                    //     if (_formKey.currentState!.validate()) {
                    //       // Simulate login process (replace with actual login logic)
                    //       await Future.delayed(const Duration(seconds: 1));
                    //       Get.to(HomePage());
                    //       if (_rememberMe) {
                    //         await _saveUserInfo(_usernameController.text,
                    //             _passwordController.text);
                    //       } else {
                    //         await _clearUserInfo();
                    //       }
                    //       // Navigate to home page after successful login
                    //       Navigator.pushReplacementNamed(context, '/home');
                    //     }
                    //   },
                    //   child: const Text('ورود به همکلاسی'),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
