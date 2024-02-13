import 'package:dawaah/const.dart';
import 'package:dawaah/widgets/custom_input_widgets.dart';
import 'package:flutter/material.dart';

// Perfect Muslim
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        leadingWidth: 200,
        leading: Padding(
          padding: screenPadding,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Row(
              children: [
                Icon(Icons.arrow_back_ios),
                Expanded(
                  child: Text("Back"),
                ),
              ],
            ),
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
      body: _mainView(),
      bottomNavigationBar: Container(
        height: 70,
        padding: const EdgeInsets.only(top: 10),
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey),
          ),
        ),
        // color: Colors.greenAccent,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 5,
            backgroundColor: Colors.grey,
          ),
          child: const Text("Calculate Zakat"),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _mainView() {
    return SingleChildScrollView(
      child: Padding(
        padding: screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceMd40,
            _pageTitleView(),
            verticalSpaceMd40,
            _infoText("Your Assets"),
            CustomInputField(
              hintText: "Value of Gold in BDT",
            ),
            CustomInputField(
              hintText: "Value of Silver in BDT",
            ),
            CustomInputField(
              hintText: "Cash on Hands",
            ),
            CustomInputField(
              hintText: "Cash in Bank Account",
            ),
            CustomInputField(
              hintText: "Value of Share,Stock,Others",
            ),
            _infoText("Your Expenses/Liability"),
            CustomInputField(
              hintText: "Owed Amount",
            ),
            CustomInputField(
              hintText: "Expense Amount",
            ),
            CustomInputField(
              hintText: "Others",
            ),
          ],
        ),
      ),
    );
  }

  Container _infoText(String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Row _pageTitleView() {
    return const Row(
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
