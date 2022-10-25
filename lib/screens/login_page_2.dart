import 'package:ecommerce/screens/login_page.dart';
import 'package:ecommerce/screens/main_page.dart';
import 'package:ecommerce/utils/app_routes.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/images.dart';
import 'package:ecommerce/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

final _formkey = GlobalKey<FormState>();

class _SignUpPageState extends State<SignUpPage> {
  bool isvisiblity = true;
  bool isvisiblity2 = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: myColors.C_5956E9,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 287,
                      width: double.infinity,
                    ),
                    Positioned(
                        top: 99,
                        left: 50,
                        child: Text(
                          "Welcome \nback",
                          style: Mystyle.RalewayBold700.copyWith(
                              fontSize: 76, color: Colors.white),
                        )),
                    Positioned(
                        top: 26,
                        left: 70,
                        child: SvgPicture.asset(
                          myImages.circle_icon,
                          width: 30,
                        )),
                    Positioned(
                        left: 246, child: SvgPicture.asset(myImages.moon_icon)),
                    Positioned(
                        top: 230,
                        left: 309,
                        child: SvgPicture.asset(
                          myImages.circle_icon,
                          width: 40,
                        ))
                  ],
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    width: double.infinity,
                    height: 700,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text(
                              'Login',
                              style: Mystyle.RelawayMedium500.copyWith(
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.person),
                              SizedBox(
                                width: 15,
                              ),
                              Text("Full name",
                                  style: Mystyle.RalewayBold700.copyWith(
                                    fontSize: 16,
                                    color: myColors.C_868686.withOpacity(0.5),
                                  )),
                            ],
                          ),
                          MyTextField("Full Name"),
                          SizedBox(
                            height: 40,
                          ),
                          Row(children: [
                            SvgPicture.asset(myImages.email_icon),
                            SizedBox(
                              width: 15,
                            ),
                            Text("Email",
                                style: Mystyle.RalewayBold700.copyWith(
                                  fontSize: 16,
                                  color: myColors.C_868686,
                                ))
                          ]),
                          MyTextField("Email"),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(myImages.password_icon),
                              SizedBox(
                                width: 15,
                              ),
                              Text("Password"),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: TextFormField(
                              style: const TextStyle(color: Colors.black),
                              keyboardType: TextInputType.text,
                              obscureText: isvisiblity,
                              validator: (value) {
                              if(value == null || value.isEmpty) {
                                return "Enter your Password";
                              }
                              return null;
                            },
                              decoration: InputDecoration(
                                suffixIcon: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        isvisiblity = !isvisiblity;
                                      });
                                    },
                                    child: isvisiblity
                                        ? Text(
                                            "Show",
                                            style:
                                                Mystyle.RalewayBold700.copyWith(
                                                    color: myColors.C_5956E9),
                                          )
                                        : Text(
                                            "Hide",
                                            style:
                                                Mystyle.RalewayBold700.copyWith(
                                                    color: myColors.C_5956E9),
                                          )),
                                hintStyle:
                                    const TextStyle(color: myColors.C_868686),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: myColors.C_868686,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(myImages.password_icon),
                              SizedBox(
                                width: 15,
                              ),
                              Text("Configure password"),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: TextFormField(
                              style: const TextStyle(color: Colors.black),
                              keyboardType: TextInputType.text,
                              obscureText: isvisiblity2,
                              validator: (value) {
                              if(value == null || value.isEmpty) {
                                return "Enter your Configure password";
                              }
                              return null;
                            },
                              decoration: InputDecoration(
                                suffixIcon: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        isvisiblity2 = !isvisiblity2;
                                      });
                                    },
                                    child: isvisiblity2
                                        ? Text(
                                            "Show",
                                            style:
                                                Mystyle.RalewayBold700.copyWith(
                                                    color: myColors.C_5956E9),
                                          )
                                        : Text(
                                            "Hide",
                                            style:
                                                Mystyle.RalewayBold700.copyWith(
                                                    color: myColors.C_5956E9),
                                          )),
                                hintStyle:
                                    const TextStyle(color: myColors.C_868686),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: myColors.C_868686,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          InkWell(
                            onTap: () {
                              if(_formkey.currentState!.validate()){
                                Navigator.pushNamed(context, RouteName.main);
                          }
                            },
                            child: Container(
                              width: 300,
                              height: 70,
                              decoration: BoxDecoration(
                                color: myColors.C_5956E9,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Text(
                                "Login",
                                style: Mystyle.RalewayBold700.copyWith(
                                    fontSize: 20, color: Colors.white),
                              )),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                              child: Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context,RouteName.sign_in);
                                },
                                child: Text(
                                  "Sign In",
                                  style: Mystyle.RelawayMedium500.copyWith(
                                      fontSize: 18, color: myColors.C_5956E9),
                                )),
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget MyTextField(String errorname) {
  return Padding(
    padding: EdgeInsets.only(right: 50),
    child: TextFormField(
      style: const TextStyle(color: Colors.black),
      keyboardType: TextInputType.text,
      obscureText: false,
      validator: (value) {
        if(value == null || value.isEmpty) {
          return "Enter your $errorname";
        }
        return null;
      },
      decoration: const  InputDecoration(
        hintStyle:  TextStyle(color: myColors.C_868686),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: myColors.C_868686,
          ),
        ),
      ),
    ),
  );
}
