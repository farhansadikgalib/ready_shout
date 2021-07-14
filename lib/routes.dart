import 'package:flutter/widgets.dart';
import 'package:ready_shout/screens/AddCustomer/customer_added.dart';
import 'package:ready_shout/screens/down/components/down_screen.dart';
import 'package:ready_shout/screens/down/down.dart';
import 'package:ready_shout/screens/forgot_password/forgot_password_screen.dart';
import 'package:ready_shout/screens/send_request/compnents/send_request_form.dart';
import 'package:ready_shout/screens/send_request/send_request.dart';
import 'package:ready_shout/screens/sign_in/sign_in_screen.dart';
import 'package:ready_shout/screens/splash/splash_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';





// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {

  SplashScreen.routeName: (context) => SplashScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  SendrequestScreen.routeName: (context) => Sendrequest(),
  Down.routeName: (context) => DownScreen(),
  CustomerAddedScreen.routeName: (context) => CustomerAddedScreen(),
};