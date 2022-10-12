import 'package:flutter/material.dart';

class SignUpP2 extends StatelessWidget {
  const SignUpP2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 47.0, bottom: 30),
            child: Text("Let us your Name"),
          ),
          Container(
            height: 45,
            decoration: const BoxDecoration(
                color: Color(0xffF1F1F1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Container(
            height: 45,
            decoration: const BoxDecoration(
                color: Color(0xffF1F1F1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          const SizedBox(
            height: 8.0,
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
                width: MediaQuery.of(context).size.width, height: 45),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff1363DF),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100)))),
              onPressed: () {},
              child: const Text("Continue"),
            ),
          ),
        ]),
      ),
    );
  }
}
