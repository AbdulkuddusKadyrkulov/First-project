import 'package:flutter/material.dart';
import 'package:flutter_application_1/uchunchu_bet.dart';

class EkinchiBet extends StatelessWidget {
  const EkinchiBet({super.key, this.counter});
  final int? counter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'тапшырма 2',
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              height: 50,
              width: 330,
              child: Center(
                child: Text(
                  'Сан:  $counter',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UcunchuBet(),
                  ),
                );
              },
              child: const Icon(
                Icons.skip_next,
                color: Colors.black,
                size: 45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
