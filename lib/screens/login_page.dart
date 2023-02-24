import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:social_network_test_flutter_firebase/Auth/register_email_section.dart';
import 'package:social_network_test_flutter_firebase/Auth/sign_in_email_password_section.dart';
import 'package:social_network_test_flutter_firebase/allConstants/all_constants.dart';
import 'package:social_network_test_flutter_firebase/allWidgets/custom_button.dart';
import 'package:social_network_test_flutter_firebase/allWidgets/custom_image_view.dart';
import 'package:social_network_test_flutter_firebase/providers/auth_provider.dart';
import 'package:social_network_test_flutter_firebase/screens/home_page.dart';
import 'package:social_network_test_flutter_firebase/theme/app__decoration.dart';
import 'package:social_network_test_flutter_firebase/theme/app_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    switch (authProvider.status) {
      case Status.authenticateError:
        Fluttertoast.showToast(msg: 'Sign in failed');
        break;
      case Status.authenticateCanceled:
        Fluttertoast.showToast(msg: 'Sign in cancelled');
        break;
      case Status.authenticated:
        Fluttertoast.showToast(msg: 'Sign in successful');
        break;
      default:
        break;
    }
    return SafeArea(
        child: Stack(
      children: <Widget>[
        Image.asset(
          ImageConstant.imgBackgroundExtreme,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(409),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    width: getHorizontalSize(286),
                                    margin: getMargin(left: 24),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Connect friends",
                                              style: TextStyle(
                                                  color: AppColors.whiteA700,
                                                  fontSize: getFontSize(68),
                                                  fontFamily: 'Caros',
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: " easily & quickly",
                                              style: TextStyle(
                                                  color: AppColors.whiteA700,
                                                  fontSize: getFontSize(68),
                                                  fontFamily: 'Caros',
                                                  fontWeight: FontWeight.w600))
                                        ]),
                                        textAlign: TextAlign.left)))
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(280),
                              margin: getMargin(left: 24, top: 1, right: 70),
                              child: Text(
                                  "Our chat app is the perfect way to stay connected with friends and family.",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtCircularStdBook16))),
                      Padding(
                          padding: getPadding(top: 37),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: const EdgeInsets.all(0),
                                    color: AppColors.gray900,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: AppColors.gray500,
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
                                        decoration: AppDecoration.outlineGray500
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder24),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgFacebook,
                                              height: getVerticalSize(36),
                                              width: getHorizontalSize(46),
                                              alignment: Alignment.center,
                                              onTap: () {})
                                        ]))),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(left: 20),
                                    color: AppColors.gray900,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: AppColors.gray500,
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
                                        decoration: AppDecoration.outlineGray500
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder24),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgVolume,
                                              height: getVerticalSize(36),
                                              width: getHorizontalSize(46),
                                              alignment: Alignment.center,
                                              onTap: () {})
                                        ]))),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(left: 20),
                                    color: AppColors.gray900,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: AppColors.gray500,
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
                                        decoration: AppDecoration.outlineGray500
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder24),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgForward,
                                              height: getVerticalSize(36),
                                              width: getHorizontalSize(46),
                                              alignment: Alignment.center,
                                              onTap: () {})
                                        ])))
                              ])),
                      Padding(
                          padding: getPadding(left: 30, top: 14, right: 30),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4, bottom: 4),
                                    child: SizedBox(
                                        width: getHorizontalSize(132),
                                        child: Divider(
                                            color: AppColors.blueGray1006c))),
                                Padding(
                                    padding: getPadding(left: 15),
                                    child: Text("OR",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtCircularStdBook14
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.1)))),
                                Padding(
                                    padding: getPadding(top: 4, bottom: 4),
                                    child: SizedBox(
                                        width: getHorizontalSize(132),
                                        child: Divider(
                                            color: AppColors.blueGray1006c)))
                              ])),
                      CustomButton(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterEmailSection()));
                          },
                          height: getVerticalSize(48),
                          text: "Sign up within mail",
                          margin: getMargin(left: 24, top: 27, right: 24),
                          variant: ButtonVariant.FillWhiteA700,
                          fontStyle: ButtonFontStyle.CarosMedium16),
                      Padding(
                          padding: getPadding(top: 20, bottom: 5),
                          child: Center(
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const EmailPasswordForm()));
                              },
                              child: Text("Existing account? Log in",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtCircularStdMedium14
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.1))),
                            ),
                          ))
                    ])))
      ],
    ));
  }
}
