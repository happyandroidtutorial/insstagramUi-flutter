import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextField(
      {required TextEditingController controller,
      required String text,
      required bool toHide,
      TextInputType? textInputType}) {
    return Container(
      height: 44,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0XFF121212),
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.grey.shade700)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: TextField(
          controller: controller,
          obscureText: toHide,
          keyboardType: textInputType,
          decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color(0XFFFFFFFF)),
              border: InputBorder.none),
        ),
      ),
    );
  }

  static CustomImg({required String imgUrl}) {
    return Image.asset('assets/images/$imgUrl');
  }

  static CustomTextButton(
      {required VoidCallback callback, required String text}) {
    return TextButton(
        onPressed: () {
          callback();
        },
        child: Text(
          text,
          style: TextStyle(color: Color(0XFF3797EF), fontSize: 14),
        ));
  }

  static CustomButton(
      {required VoidCallback callback, required String buttonname}) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0XFF3797EF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: Center(
            child: Text(
              buttonname,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          )),
    );
  }
}
