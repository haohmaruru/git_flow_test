// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:otp_autofill/otp_autofill.dart';
// import 'package:sms_autofill/sms_autofill.dart';
// import 'package:telephony/telephony.dart';
//
// class OtpTestScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _OtpTestScreenState();
// }
//
// class _OtpTestScreenState extends State<OtpTestScreen> {
//   String otp = '';
//   final scaffoldKey = GlobalKey();
//   late OTPTextEditController controller;
//   late OTPInteractor _otpInteractor;
//
//   @override
//   void initState() {
//     super.initState();
//     // Permission.sms.request();
//     // handleSms();
//     //
//     // String test =
//     //     'Your otp for 7781 the login is 783278. This code will 7781 expire at 12:43:09PM';
//     // String otpInSms = getOtpFromString(test);
//     // print('smsContent: $otpInSms');
//
//     if (Platform.isAndroid) {
//       androidHandle();
//     } else {
//       iosHandle();
//     }
//   }
//
//   iosHandle() async {
//     final String signature = await SmsAutoFill().getAppSignature;
//     print("Signature: $signature");
//     await SmsAutoFill().listenForCode();
//   }
//
//   androidHandle() {
//     _otpInteractor = OTPInteractor();
//     _otpInteractor
//         .getAppSignature()
//         //ignore: avoid_print
//         .then((value) => print('signature - $value'));
//
//     controller = OTPTextEditController(
//       codeLength: 6,
//       //ignore: avoid_print
//       onCodeReceive: (code) => print('Your Application receive code - $code'),
//       otpInteractor: _otpInteractor,
//     )..startListenUserConsent(
//         (code) {
//           final exp = RegExp(r'(\d{6})');
//           return exp.stringMatch(code ?? '') ?? '';
//         },
//       );
//   }
//
//   handleSms() {
//     final Telephony telephony = Telephony.instance;
//     telephony.listenIncomingSms(
//         onNewMessage: (SmsMessage message) {
//           String sms = message.body.toString();
//           String otpInSms = getOtpFromString(sms);
//           print('smsContent: $otpInSms');
//           setState(() {
//             otp = otpInSms;
//           });
//         },
//         listenInBackground: false);
//   }
//
//   String getOtpFromString(String otpSms) {
//     String result = '';
//     final regexp = RegExp(r'\d{6}');
//     final match = regexp.firstMatch(otpSms);
//     if (match != null) {
//       result = match.group(0).toString();
//     }
//     return result;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         key: scaffoldKey,
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(40.0),
//             child: TextField(
//               textAlign: TextAlign.center,
//               keyboardType: TextInputType.number,
//               controller: controller,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Future<void> dispose() async {
//     await controller.stopListen();
//     _otpInteractor.stopListenForCode();
//     SmsAutoFill().unregisterListener();
//     super.dispose();
//   }
// }
