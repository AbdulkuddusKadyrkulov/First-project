// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ekinchi_bet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'тапшырма 1',
          style: TextStyle(
              fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.w500),
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
                  'Сан: $counter',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {});
                    if (counter == 0) {
                      return;
                    } else {
                      counter--;
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)),
                    height: 50,
                    width: 70,
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {});
                    counter++;
                  },
                  child: Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EkinchiBet(
                      counter: counter,
                    ),
                  ),
                );
              },
              child: const Icon(
                Icons.skip_next,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
