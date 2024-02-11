import 'package:dawaah/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        leadingWidth: 200,
        leading: const Padding(
          padding: screenPadding,
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios),
              Expanded(
                child: Text("Back"),
              ),
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
      body: Padding(
        padding: screenPadding,
        child: Column(
          children: [
            verticalSpaceMd40,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Zakat on Wealth"),
                    Text("Zakat-al-maal"),
                  ],
                ),
                _tresholdView(),
              ],
            ),
            verticalSpaceMd40,
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: screenPadding.copyWith(top: 10, bottom: 10),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Hello"),
                        Icon(Icons.add),
                      ],
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _tresholdView extends StatelessWidget {
  const _tresholdView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: screenPadding.copyWith(left: 10, right: 10),
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(6),
            ),
          ),
          child: const Row(
            children: [
              Icon(
                Icons.trending_up_rounded,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text("\$5,176")
            ],
          ),
        ),
        const Text("Wealth Treshold"),
        const Text("Based on 3 troy ounce gold price"),
      ],
    );
  }
}
