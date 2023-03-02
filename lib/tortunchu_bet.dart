import 'package:flutter/material.dart';

class TortunchuBet extends StatelessWidget {
  const TortunchuBet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(5, 108, 92, 1),
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          elevation: 0,
          title: const Text(
            "тапшырма 4",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Center(
              child: Center(
                child: Text(
                  "?",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
