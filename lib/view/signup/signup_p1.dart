import 'package:flutter/material.dart';

class SignUpP1 extends StatelessWidget {
  const SignUpP1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 47.0, bottom: 30),
            child: Text("Start by choosing your account type"),
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
              child: const Text("Company"),
            ),
          ),
          const SizedBox(
            height: 10.0,
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
              child: const Text("Candidate"),
            ),
          )
        ]),
      ),
    );
  }
}
