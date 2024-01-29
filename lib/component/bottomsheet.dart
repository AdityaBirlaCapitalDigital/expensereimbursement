import 'package:easy_debounce/easy_debounce.dart';
import 'package:expensereimbursement/common/common.dart';
import 'package:expensereimbursement/common/divider.dart';
import 'package:expensereimbursement/common/size.dart';
import 'package:expensereimbursement/component/circleavatar.dart';
import 'package:expensereimbursement/component/spacer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'app_pin_code_text_field.dart';

Future bottomSheet(
    {required BuildContext context,
    required String type,
    required double size,
    String? successType}) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    isDismissible: false,
    enableDrag: false,
    builder: (BuildContext context) {
      return FractionallySizedBox(
        heightFactor: size,
        child: Container(
          height: context.deviceHeight * size,
          width: double.maxFinite,
          // color: Colors.white,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: context.deviceWidth * 0.3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(36.0)),
                  child: Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                        Spacer(),
                        Icon(Icons.chevron_left),
                        Sb.sbH20,
                        Text("Go Back",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Spacer(),
                      ])),
                ),
              ),
            ),
            if (type == "RFD")
              RegistrationFromDashboardBottomSheetContent()
            else if (type == "ISSUE")
              IssueBottomSheetContent()
            else if (type == "AUTHSUCCESS")
              AuthenticationSuccessBottomSheetContent()
            else if (type == "ESU")
              EmployeeSignUpBottomSheetContent()
            else if (type == "EOTP")
              EnterOTPBottomSheetContent()
            else if (type == "SUCCESSTYPE")
              SuccessBottomSheetContent(
                successType: successType!,
              )
            else if (type == "SELECTCATEGORIES")
              SelectCategoryBottomSheetContent()
            else
              EnterOTPBottomSheetContent()
          ]),
        ),
      );
    },
  );
}

class RegistrationFromDashboardBottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        // height: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(48.0), topLeft: Radius.circular(48.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            circleAvatar(context),
            Text("We noticed you're an \n ABC employee, Amit Kumar",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text(
              "Would you like to link your corporate accounts to \n make it easier to get reimbursements?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Container(
                height: 50,
                width: context.deviceWidth * 0.9,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(36.0)),
                child: Center(
                  child: Text("Set up reimbursements",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Skip for now"),
                  Sb.sbW10,
                  Icon(Icons.arrow_forward_rounded)
                ])
          ],
        ),
      ),
    );
  }
}

class AuthenticationSuccessBottomSheetContent extends StatefulWidget {
  @override
  State<AuthenticationSuccessBottomSheetContent> createState() =>
      _AuthenticationSuccessBottomSheetContentState();
}

class _AuthenticationSuccessBottomSheetContentState
    extends State<AuthenticationSuccessBottomSheetContent> {
  bool _checkboxStatus = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        // height: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(48.0), topLeft: Radius.circular(48.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            circleAvatar(context),
            Text("HERE ARE YOUR DETAILS",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            Container(
              height: context.deviceHeight * 0.16,
              width: context.deviceWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: CircleAvatar(
                      maxRadius: 36,
                      backgroundColor: Colors.white,
                      child: Text("AK",
                          style: TextStyle(fontSize: 32, color: Colors.red)),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Amit Kumar",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)),
                      Text("09823188920019901",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                      Text("Aditya Birla Health Insurance",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.00, 0.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 12.0, 0.0),
                child: Container(
                  width: context.deviceWidth * 0.9,
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Spacer(),
                      Sb.sbW20,
                      Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                          ),
                          unselectedWidgetColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                        child: Checkbox(
                          value: _checkboxStatus,
                          onChanged: (newValue) async {
                            setState(() => _checkboxStatus = newValue!);
                          },
                          activeColor: Color(0xFFC7222A),
                          checkColor: Colors.redAccent,
                        ),
                      ),
                      Sb.sbW10,
                      Wrap(children: [
                        RichText(
                          softWrap: true,
                          maxLines: 2,
                          textScaleFactor:
                              MediaQuery.of(context).textScaleFactor,
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'I agree with the ',
                              style: TextStyle(
                                // fontFamily: 'Anek Latin',
                                color: Color(0xFF414042),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: ' Terms & Conditions ',
                              style: TextStyle(
                                // fontFamily: 'Anek Latin',
                                color: Color(0xFFC7222A),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                              mouseCursor: SystemMouseCursors.click,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  // await action_blocks.openWebView(
                                  //   context,
                                  //   showCloseButton: false,
                                  //   url:
                                  //   'https://www.adityabirlacapital.com/app-digital/terms-conditions',
                                  // );
                                },
                            ),
                            TextSpan(
                              text: ' of\n Aditya Birla Health Insurance',
                              style: FlutterFlowTheme.of(context).bodySmall,
                            ),
                          ], style: FlutterFlowTheme.of(context).bodyMedium
                              //   .override(
                              // fontFamily: 'Anek Latin',
                              // fontSize: 12.0,
                              // fontWeight: FontWeight.w500,
                              // ),
                              ),
                          textAlign: TextAlign.left,
                        ),
                      ]),
                      // Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                height: 50,
                width: context.deviceWidth * 0.9,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(36.0)),
                child: Center(
                  child: Text("Finish setup",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ))
          ],
        ),
      ),
    );
  }
}

class IssueBottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        // height: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(48.0), topLeft: Radius.circular(48.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/empty-document.png",
              width: 196,
              height: 196,
            ),
            Text("There seems to be some issue",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(
              "We are having trouble connecting your corporate \n ID to the ABCD app",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: new BoxDecoration(
                          color: Colors.red.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.message_outlined,
                          color: Colors.red,
                        ),
                      ),
                      Sb.sbH10,
                      Text("Chat with us",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: new BoxDecoration(
                          color: Colors.red.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.mail,
                          color: Colors.red,
                        ),
                      ),
                      Sb.sbH10,
                      Text("Email us",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: new BoxDecoration(
                          color: Colors.red.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.phone,
                          color: Colors.red,
                        ),
                      ),
                      Sb.sbH10,
                      Text("Call us",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ],
                  )
                ])
          ],
        ),
      ),
    );
  }
}

class EmployeeSignUpBottomSheetContent extends StatefulWidget {
  @override
  State<EmployeeSignUpBottomSheetContent> createState() =>
      _EmployeeSignUpBottomSheetContentState();
}

class _EmployeeSignUpBottomSheetContentState
    extends State<EmployeeSignUpBottomSheetContent>
    with TickerProviderStateMixin {
  bool _checkboxStatus = false;
  TextEditingController corporateEmailIDController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode emailFocus = FocusNode();

  FocusNode passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        // height: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(48.0), topLeft: Radius.circular(48.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: DividerWidget()),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Image.asset(
                'assets/handgesture.png',
                fit: BoxFit.cover,
                width: 16.0,
                height: 16.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Lets authenticate \n your account",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
              child: TextFormField(
                controller: corporateEmailIDController,
                focusNode: emailFocus,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.textController1',
                  Duration(milliseconds: 400),
                  () => setState(() {}),
                ),
                onFieldSubmitted: (n) async {},
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelStyle:
                      // FlutterFlowTheme.of(context)
                      //     .bodyMedium
                      //     .override
                      TextStyle(
                    fontFamily: 'Anek Latin',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 10.0,
                    letterSpacing: 0.32,
                    fontWeight: FontWeight.w600,
                  ),
                  alignLabelWithHint: false,
                  hintText: 'Enter your corporate email ID',
                  hintStyle:
                      // FlutterFlowTheme.of(context)
                      //     .labelMedium
                      //     .override
                      TextStyle(
                    fontFamily: 'Anek Latin',
                    color: Color(0xFF979CAE),
                    fontSize: 12.0,
                    letterSpacing: 0.32,
                    fontWeight: FontWeight.w600,
                    // lineHeight: 1.6,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  filled: true,
                  fillColor: Color(0xFFE6E6E6),
                ),
                style:
                    // FlutterFlowTheme.of(context).bodyMedium.override
                    TextStyle(
                  fontFamily: 'Anek Latin',
                  color: Colors.black,
                  fontSize: 12.0,
                  letterSpacing: 0.32,
                  fontWeight: FontWeight.bold,
                  // lineHeight: 1.6,
                ),
                textAlign: TextAlign.start,
                // validator: _model.textController1Validator
                //     .asValidator(context),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z\s]+'))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
              child: TextField(
                controller: passwordController,
                focusNode: passwordFocus,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.textFieldMobileController',
                  Duration(milliseconds: 400),
                  () {
                    setState(() {});
                  },
                ),
                onSubmitted: (n) async {},
                autofocus: false,
                obscureText: false,
                decoration: InputDecoration(
                  counterText: "",
                  labelStyle:
                      // FlutterFlowTheme.of(context)
                      //     .bodyMedium
                      //     .override
                      TextStyle(
                    fontFamily: 'Anek Latin',
                    color: Color(0xFF2E2E2E),
                    fontSize: 10.0,
                    letterSpacing: 0.1,
                  ),
                  alignLabelWithHint: false,
                  hintText: 'Enter password',
                  hintStyle:
                      // FlutterFlowTheme.of(context)
                      //     .labelMedium
                      //     .override
                      TextStyle(
                    fontFamily: 'Anek Latin',
                    color: Color(0xFF979CAE),
                    fontSize: 12.0,
                    letterSpacing: 0.32,
                    fontWeight: FontWeight.w600,
                    // lineHeight: 1.6,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  filled: true,
                  fillColor: Color(0xFFE6E6E6),
                ),
                style:
                    // FlutterFlowTheme.of(context)
                    //     .bodyMedium
                    //     .override
                    TextStyle(
                  fontFamily: 'Anek Latin',
                  color: Colors.black,
                  fontSize: 12.0,
                  letterSpacing: 0.32,
                  fontWeight: FontWeight.bold,
                  // lineHeight: 1.6,
                ),
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.00, 0.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 12.0, 16.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            // Colors.white
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _checkboxStatus ??= false,
                        onChanged: (newValue) async {
                          setState(() => _checkboxStatus = newValue!);
                        },
                        activeColor: Color(0xFFC7222A),
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    Sb.sbW10,
                    Wrap(children: [
                      RichText(
                        softWrap: true,
                        maxLines: 2,
                        textScaleFactor: MediaQuery.of(context).textScaleFactor,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'I agree with the',
                              style:
                                  // FlutterFlowTheme.of(context)
                                  //     .bodyMedium
                                  //     .override
                                  TextStyle(
                                fontFamily: 'Anek Latin',
                                color: Color(0xFF414042),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: ' Terms & Conditions',
                              style:
                                  // FlutterFlowTheme.of(context)
                                  //     .bodyMedium
                                  //     .override
                                  TextStyle(
                                fontFamily: 'Anek Latin',
                                color: Color(0xFFC7222A),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                              mouseCursor: SystemMouseCursors.click,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {},
                            ),
                            TextSpan(
                              text: ' and\n',
                              style:
                                  // FlutterFlowTheme.of(context)
                                  //     .bodyMedium
                                  //     .override
                                  TextStyle(
                                fontFamily: 'Anek Latin',
                                color: Color(0xFF414042),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: 'Privacy policy',
                              style:
                                  // FlutterFlowTheme.of(context)
                                  //     .bodyMedium
                                  //     .override
                                  TextStyle(
                                fontFamily: 'Anek Latin',
                                color: Color(0xFFC7222A),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                              mouseCursor: SystemMouseCursors.click,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {},
                            )
                          ],
                          style:
                              // FlutterFlowTheme.of(context)
                              //     .bodyMedium
                              //     .override
                              TextStyle(
                            fontFamily: 'Anek Latin',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                  height: 50,
                  width: context.deviceWidth * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(36.0)),
                  child: Center(
                    child: Text("Continue",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class EnterOTPBottomSheetContent extends StatefulWidget {
  @override
  State<EnterOTPBottomSheetContent> createState() =>
      _EnterOTPBottomSheetContentState();
}

class _EnterOTPBottomSheetContentState extends State<EnterOTPBottomSheetContent>
    with TickerProviderStateMixin {
  TextEditingController otpController = TextEditingController();

  FocusNode otpFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        // height: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(48.0), topLeft: Radius.circular(48.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: DividerWidget()),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Image.asset(
                'assets/handgesture.png',
                fit: BoxFit.cover,
                width: 16.0,
                height: 16.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Lets authenticate \n your account",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Enter the 6-digit OTP sent to XXX XXX 8987",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal)),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 72.0,
                child: AppPinCodeTextField(
                  width: double.infinity,
                  height: 72.0,
                  obscureText: true,
                  verificationCode: null,
                  length: 6,
                  enableAutofill: false,
                  onChanged: () async {},
                  pinCodeController: otpController,
                ),
              ),
            ),
            Center(
              child: Container(
                  height: 50,
                  width: context.deviceWidth * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(36.0)),
                  child: Center(
                    child: Text("Continue",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class SuccessBottomSheetContent extends StatefulWidget {
  final String successType;

  const SuccessBottomSheetContent({super.key, required this.successType});

  @override
  State<SuccessBottomSheetContent> createState() =>
      _SuccessBottomSheetContentState();
}

class _SuccessBottomSheetContentState extends State<SuccessBottomSheetContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(48.0), topLeft: Radius.circular(48.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Lottie.asset(
              'assets/lottie_animations/Success.json',
              height: 200.0,
              width: 200.0,
              fit: BoxFit.cover,
              animate: true,
            ),
            Text(
                widget.successType == "Spend"
                    ? "${widget.successType} submitted successfully!"
                    : "${widget.successType} submitted \n successfully!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            Text(
              "You can track your reimbursement\nstatus from the payments home screen.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ),
            Container(
                height: 50,
                width: context.deviceWidth * 0.9,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(36.0)),
                child: Center(
                  child: Text("Done",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ))
          ],
        ),
      ),
    );
  }
}

class SelectCategoryBottomSheetContent extends StatefulWidget {
  @override
  State<SelectCategoryBottomSheetContent> createState() =>
      _SelectCategoryBottomSheetContentState();
}

class _SelectCategoryBottomSheetContentState
    extends State<SelectCategoryBottomSheetContent> {
  String selectedCategory = "";
  List<String> categoryList = [
    "Eating out",
    "General",
    "Shopping",
    "Entertainment",
    "Personal care",
    "Charity",
    "Reimbursement claim",
    "Others"
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(bottom: 16, top: 10),
        decoration: BoxDecoration(
          color: AppColors.selectCategoryBGC,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(48.0), topLeft: Radius.circular(48.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Center(child: DividerWidget()),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(
                  top: 16.0, left: 16.0, right: 16.0, bottom: 32),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Container(
                        height: 92,
                        decoration: BoxDecoration(
                          color: AppColors.amountBlock,
                          borderRadius: BorderRadius.all(Radius.circular(18.0)),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text("Airtel",
                                      style: TextStyle(fontSize: 12)),
                                ),
                                Text("25 August",
                                    style: TextStyle(fontSize: 10)),
                                Spacer(),
                                Text(
                                  "₹500",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text("SELECT CATEGORY",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600)),
                      ),
                      Expanded(
                        child: ListView.builder(
                            // physics: ClampingScrollPhysics(),
                          itemCount: categoryList.length,
                            itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:8.0),
                                child: CircleAvatar(
                                  maxRadius: 16,
                                  child: Icon(Icons.ac_unit, size: 21,),
                                ),
                              ),
                              Text(categoryList[index], style: FlutterFlowTheme.of(context).bodySmall,),
                              Spacer(),
                              Radio(value: categoryList[index], groupValue: selectedCategory, onChanged: (v){
                                print(v);
                                selectedCategory = v!;
                                setState(() {

                                });
                              })
                            ],
                          ),
                        )),
                      )
                    ],
                  ),
                ),
              ),
            )),
            Container(
                height: 50,
                width: context.deviceWidth * 0.9,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(36.0)),
                child: Center(
                  child: Text("Continue",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ))
          ],
        ),
      ),
    );
  }
}
