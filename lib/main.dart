import 'package:expensereimbursement/component/bottomsheet.dart';
import 'package:expensereimbursement/screens/expense_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Reimbursement',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  bottomSheet(context:context, type: "RFD", size : 0.6);
                },
                child: Text("SetUp Reimbursements BS")),
            ElevatedButton(
                onPressed: () {
                  bottomSheet(context:context, type: "ISSUE",size :  0.8);
                },
                child: Text("ISSUE BS")),
            ElevatedButton(
                onPressed: () {
                  bottomSheet(context:context, type: "AUTHSUCCESS",size :  0.7);
                },
                child: Text("Auth Success BS")),
        
            ElevatedButton(
                onPressed: () {
                  bottomSheet(context:context, type: "ESU",size :  0.7);
                },
                child: Text("Employee SignUp BS")),
        
            ElevatedButton(
                onPressed: () {
                  bottomSheet(context:context, type: "EOTP",size :  0.7);
                },
                child: Text("Employee OTP BS")),

            ElevatedButton(
                onPressed: () {
                  bottomSheet(context:context, type: "SUCCESSTYPE",size :  0.6, successType: "Reimbursement");
                },
                child: Text("Reimbursement Success BS")),

            ElevatedButton(
                onPressed: () {
                  bottomSheet(context:context, type: "SUCCESSTYPE",size :  0.6, successType: "Spend");
                },
                child: Text("Spend Success BS")),

            ElevatedButton(
                onPressed: () {
                  bottomSheet(context:context, type: "SELECTCATEGORIES",size :  0.94);
                },
                child: Text("Select Categories BS")),

            ElevatedButton(
                onPressed: () {
                  // bottomSheet(context:context, type: "SELECTCATEGORIES",size :  0.94);
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExpenseForm()));
                },
                child: Text("Reimbursement Flow")),
        
          ],
        ),
      ),
    );
  }
}

