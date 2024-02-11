import 'package:dawaah/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leadingWidth: 200,
          leading: const Padding(
            padding: screenPadding,
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios),
                Expanded(child: Text("Back")),
              ],
            ),
          ),
          actions: [
            Center(
              child: Padding(
                padding: screenPadding,
                child: Column(
                  children: [
                    Text(DateTime.now().toString()),
                    const Text("Ramadan 16,1444")
                  ],
                ),
              ),
            )
          ],
        ),
        body: const Padding(
          padding: screenPadding,
          child: Column(
            children: [
              verticalSpaceMd40,
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Zakat on Wealth"),
                      Text("Zakat-al-maal"),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
