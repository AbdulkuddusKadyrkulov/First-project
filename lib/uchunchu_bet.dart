import 'package:flutter/material.dart';
import 'package:flutter_application_1/tortunchu_bet.dart';

class UcunchuBet extends StatelessWidget {
  const UcunchuBet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          title: const Text(
            "тапшырма 3",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
                width: 500,
                child: Center(
                  child: Text(
                    'I`m Rich',
                    style: TextStyle(
                      fontFamily: 'Sofia',
                      fontSize: 60,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Image.asset('assets/images/almaz.png'),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TortunchuBet(),
                    ),
                  );
                },
                child: const Icon(
                  Icons.skip_next,
                  size: 50,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
