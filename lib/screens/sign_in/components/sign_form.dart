import 'package:flutter/material.dart';
import 'package:ready_shout/components/custom_icon.dart';
import 'package:ready_shout/components/form_error.dart';
import 'package:ready_shout/components/rounded_button.dart';
import 'package:ready_shout/constants.dart';
import 'package:ready_shout/helper/keyboard.dart';
import 'package:ready_shout/screens/forgot_password/forgot_password_screen.dart';
import 'package:ready_shout/screens/home/home_screen.dart';
import 'package:ready_shout/screens/sign_with_google/sign_with_google_screen.dart';
import 'package:ready_shout/size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: 10),
          buildPasswordFormField(),
          SizedBox(height: 10),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: ktColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember me",
              style: TextStyle(
                color: kColor,
              ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline,
                    color: kColor,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          RoundedButton(
            text: "Sign in",
            color: kPrimaryColor,
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ),
                );
              }
            },
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
              SizedBox(
              height: 0,
              width: 120.0,
              child: Divider(
                color: Color(0xFF000000),
              ), ),
                SizedBox(width: 7),
                Center(
                  child: Text('Or',
                   style: TextStyle(
                      fontFamily: 'AirbnbCereal',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: kColor,
                    ),),
                ),
                SizedBox(width: 7),
                SizedBox(
                  height: 0,
                  width: 120.0,
                  child: Divider(
                    color: Color(0xFF000000),
                  ), ),

              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          RoundedButton(
            text: "Continue with google",
            color: kSecondaryColor,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignWithGoogleScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        hintText: "Password",
        fillColor: kboxColor,
        filled: true,
        hintStyle: TextStyle(
          fontFamily: 'AirbnbCereal',
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: kColor,
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "icons/eye.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        hintText: "Email",
        fillColor: kboxColor,
        filled: true,
        hintStyle: TextStyle(
          fontFamily: 'AirbnbCereal',
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: kColor,
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

}

