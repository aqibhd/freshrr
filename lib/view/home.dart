import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 6.0,
        ),
        Container(
          height: 130.0,
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Tuesday, September 24",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 6.0,
              ),
              Text(
                "Good Afternoon",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Row(children: [
          Expanded(
            child: Container(
              height: 200,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 6.0,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 97.0,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Container(
                  height: 97.0,
                  color: Colors.white,
                )
              ],
            ),
          )
        ]),
        const SizedBox(
          height: 6.0,
        ),
        Container(
          color: Colors.white,
          height: 400,
        )
      ]),
    );
  }
}
