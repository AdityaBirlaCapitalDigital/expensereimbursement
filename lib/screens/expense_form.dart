import 'package:dotted_border/dotted_border.dart';
import 'package:expensereimbursement/common/size.dart';
import 'package:flutter/material.dart';

import '../common/common.dart';
import '../component/dotted_border.dart';
import '../library/bs_flutter_selectbox/src/bs_selectbox.dart';
import '../library/bs_flutter_selectbox/src/customize/bs_dialogbox_style.dart';
import '../library/bs_flutter_selectbox/src/utils/bs_selectbox_controller.dart';
import '../library/bs_flutter_selectbox/src/utils/bs_selectbox_option.dart';

class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key});

  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  BsSelectBoxController _dropdownList = BsSelectBoxController(
      options: [BsSelectBoxOption(value: 1, text: "Mobile bill payment")]);

  TextEditingController remarksController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 64.0, left: 18, right: 18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 92,
                decoration: const BoxDecoration(
                  color: AppColors.amountBlock,
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),
                child: const Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("Airtel", style: TextStyle(fontSize: 12)),
                        ),
                        Text("25 August", style: TextStyle(fontSize: 10)),
                        Spacer(),
                        Text(
                          "₹500",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text("provide supporting details".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w600)),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 18.0),
                child: BsSelectBox(
                  padding: const EdgeInsets.fromLTRB(10.0, 12.0, 10.0, 12.0),
                  hintTextLabel: 'What type of expense is this?',
                  controller: _dropdownList,
                  dialogStyle: BsDialogBoxStyle(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  style: BsSelectBoxStyle(
                    backgroundColor: Colors.black12.withOpacity(0.06),
                    hintTextColor: Colors.black,
                    selectedColor: Colors.grey.withOpacity(0.3),
                    selectedTextColor: Colors.black,
                    textColor: Colors.black,
                    borderRadius: BorderRadius.circular(18.0),
                    focusedTextColor: Colors.black,
                  ),
                  onChange: (BsSelectBoxOption a) {
                    print(a.getText());
                    // _dropdownList.options.where((element) => element.getValue() == selectedDropdownItem)
                  },
                  paddingDialog: EdgeInsets.all(15),
                  marginDialog: EdgeInsets.only(top: 5.0, bottom: 5.0),
                ),
              ),
              TextField(
                controller: remarksController,
                maxLines: 4,
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.done,
                style: const TextStyle(fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  label: const Text('Remarks'),
                  filled: true,
                  fillColor: Colors.black12.withOpacity(0.06),
                  // Change the background color here
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(
                          width: 0, color: Colors.transparent)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(
                          width: 0, color: Colors.transparent)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(
                          width: 0, color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(
                          width: 0, color: Colors.transparent)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  dashPattern: [9, 12],
                  strokeWidth: 1.2,
                  padding: EdgeInsets.zero,
                  color: Colors.black.withOpacity(0.2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                      width: context.deviceWidth * 0.9,
                      height: 100,
                      color: Colors.black12.withOpacity(0.06),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text("Upload your supporting \n documentation",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                ),

                                Text("JPG/PNG/PDF Files", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.5)),),
                                Text("(up to 3MB)", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.5)))],

                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 4.0),
                                        child: CircleAvatar(
                                          maxRadius: 24,
                                          backgroundColor: Colors.red,
                                          child: Icon(Icons.camera_alt, size: 30, color: Colors.white,)
                                        ),
                                      ),
                                      Text("Camera", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.5)),),

                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 4.0),
                                      child: CircleAvatar(
                                        maxRadius: 24,
                                        backgroundColor: Colors.red,
                                        child: Icon(Icons.upload, size: 30, color: Colors.white,),
                                      ),
                                    ),
                                    Text("Upload", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color:  Colors.black.withOpacity(0.5)),),

                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Uploads :",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text(
                      "Added 1",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Container(
                height: 56,
                width: context.deviceWidth * 0.9,
                decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.06),
                    borderRadius: BorderRadius.circular(24.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 18,
                        backgroundColor: Colors.red.withOpacity(0.1),
                        child: Icon(Icons.picture_as_pdf, size: 24, color: Colors.red.withOpacity(0.5),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("022299110022848CDER.pdf", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                          Text("PDF document", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey))],
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("965kb", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.7))),
                          Icon(Icons.delete, size: 24, color: Colors.red,)],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
            height: 50,
            width: context.deviceWidth * 0.9,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(36.0)),
            child: Center(
              child: Text("Submit",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            )),
      ),
    );
  }
}
