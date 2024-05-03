import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
        title: Text("Counter"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {

                  });
                  counter--;

                },
                child: const Text(
                  "Minus",
                  style: TextStyle(fontSize: 25.0, color: Colors.blue),
                )),
            const SizedBox(
              width: 15.0,
            ),
            Text(
              "$counter",
              style: const TextStyle(
                fontSize: 45.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            TextButton(
                onPressed: () {
                  setState(() {

                  });
                  counter++;
                },
                child: const Text(
                  "Plus",
                  style: TextStyle(fontSize: 25.0, color: Colors.blue),
                )),
          ],
        ),
      ),
    );
  }
}
