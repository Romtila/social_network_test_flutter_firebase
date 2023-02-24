import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_network_test_flutter_firebase/allConstants/all_constants.dart';
import 'package:social_network_test_flutter_firebase/allConstants/all_constants.dart';
import 'package:social_network_test_flutter_firebase/allConstants/all_constants.dart';
import 'package:social_network_test_flutter_firebase/allConstants/all_constants.dart';
import 'package:social_network_test_flutter_firebase/allConstants/all_constants.dart';
import 'package:social_network_test_flutter_firebase/allConstants/all_constants.dart';
import 'package:social_network_test_flutter_firebase/allConstants/all_constants.dart';
import 'package:social_network_test_flutter_firebase/allConstants/all_constants.dart';
import 'package:social_network_test_flutter_firebase/allConstants/all_constants.dart';
import 'package:social_network_test_flutter_firebase/allConstants/all_constants.dart';
import 'package:social_network_test_flutter_firebase/allWidgets/custom_button.dart';
import 'package:social_network_test_flutter_firebase/allWidgets/custom_image_view.dart';
import 'package:social_network_test_flutter_firebase/allWidgets/custom_text_form_field.dart';
import 'package:social_network_test_flutter_firebase/theme/app__decoration.dart';
import 'package:social_network_test_flutter_firebase/theme/app_style.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class EmailPasswordForm extends StatefulWidget {
  const EmailPasswordForm({super.key});

  @override
  State<StatefulWidget> createState() => EmailPasswordFormState();
}

class EmailPasswordFormState extends State<EmailPasswordForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool? _success;
  late String _userEmail;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 17, right: 24, bottom: 17),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowleft,
                              height: getSize(24),
                              width: getSize(24),
                              alignment: Alignment.centerLeft,
                              onTap: () {
                                onTapImgArrowleft(context);
                              }),
                          Container(
                              height: getVerticalSize(23),
                              width: getHorizontalSize(161),
                              margin: getMargin(top: 58),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: getVerticalSize(8),
                                        width: getHorizontalSize(56),
                                        decoration: BoxDecoration(
                                            color: AppColors.teal300))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("Log in to Chatbox",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtCarosBold18))
                              ])),
                          Container(
                              width: getHorizontalSize(256),
                              margin: getMargin(left: 34, top: 16, right: 35),
                              child: Text(
                                  "Welcome back! Sign in using your social account or email to continue us",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtCircularStdBook14Gray600
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.1)))),
                          Padding(
                              padding: getPadding(top: 33),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: const EdgeInsets.all(0),
                                        color: AppColors.whiteA700,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: AppColors.black90001,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(24))),
                                        child: Container(
                                            height: getSize(48),
                                            width: getSize(48),
                                            padding: getPadding(
                                                left: 1,
                                                top: 6,
                                                right: 1,
                                                bottom: 6),
                                            decoration: AppDecoration
                                                .outlineBlack90001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder24),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgFacebook,
                                                  height: getVerticalSize(36),
                                                  width: getHorizontalSize(46),
                                                  alignment: Alignment.center)
                                            ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 20),
                                        color: AppColors.whiteA700,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: AppColors.black90001,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(24))),
                                        child: Container(
                                            height: getSize(48),
                                            width: getSize(48),
                                            padding: getPadding(
                                                left: 1,
                                                top: 6,
                                                right: 1,
                                                bottom: 6),
                                            decoration: AppDecoration
                                                .outlineBlack90001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder24),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVolume,
                                                  height: getVerticalSize(36),
                                                  width: getHorizontalSize(46),
                                                  alignment: Alignment.center)
                                            ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 20),
                                        color: AppColors.whiteA700,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: AppColors.black90001,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(24))),
                                        child: Container(
                                            height: getSize(48),
                                            width: getSize(48),
                                            padding: getPadding(
                                                left: 1,
                                                top: 6,
                                                right: 1,
                                                bottom: 6),
                                            decoration: AppDecoration
                                                .outlineBlack90001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder24),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant.imgEye,
                                                  height: getVerticalSize(36),
                                                  width: getHorizontalSize(46),
                                                  alignment: Alignment.center)
                                            ])))
                                  ])),
                          Padding(
                              padding: getPadding(left: 6, top: 28, right: 6),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 8),
                                        child: SizedBox(
                                            width: getHorizontalSize(132),
                                            child: Divider(
                                                color:
                                                    AppColors.blueGray10087))),
                                    Text("OR",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtCircularStdBook14Gray6001
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.1))),
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 8),
                                        child: SizedBox(
                                            width: getHorizontalSize(132),
                                            child: Divider(
                                                color:
                                                    AppColors.blueGray10087)))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 25),
                                  child: Text("Your email",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtCircularStdMedium14Teal700
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.1))))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: _emailController,
                              hintText: "your_email@gmail.com",
                              margin: getMargin(top: 13),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              variant:
                                  TextFormFieldVariant.UnderLineBluegray10001,
                              fontStyle: TextFormFieldFontStyle.Caros16,
                              textInputType: TextInputType.emailAddress),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 27),
                                  child: Text("Password",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtCircularStdMedium14Teal700
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.1))))),
                          /*CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: passwordOneController,
                              hintText: "**********",
                              margin: getMargin(top: 12),
                              variant:
                                  TextFormFieldVariant.UnderLineBluegray100,
                              fontStyle: TextFormFieldFontStyle.Caros16,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              isObscureText: true),*/
                          const Spacer(),
                          CustomButton(
                              height: getVerticalSize(48),
                              text: "Log in",
                              variant: ButtonVariant.FillTeal700),
                          Padding(
                              padding: getPadding(top: 15, bottom: 19),
                              child: Text("Forgot password?",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtCircularStdMedium14Teal700
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.1))))
                        ])))));
    /*Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
            child: const Text('Test sign in with email and password'),
          ),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: 'Password'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  _signInWithEmailAndPassword();
                }
              },
              child: const Text('Sign In'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              _success == null
                  ? ''
                  : (_success!
                      ? 'Successfully signed in $_userEmail'
                      : 'Sign in failed'),
              style: const TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );*/
  }

  void _signInWithEmailAndPassword() async {
    final User? user = (await _auth.signInWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    ))
        .user;

    if (user != null) {
      setState(() {
        _success = true;
        _userEmail = user.email!;
      });
    } else {
      setState(() {
        _success = false;
      });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
