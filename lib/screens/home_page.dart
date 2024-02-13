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
      body: _mainView(),
      bottomNavigationBar: ElevatedButton(
        child: const Text("data"),
        onPressed: () {},
      ),
    );
  }

  Widget _mainView() {
    return SingleChildScrollView(
      child: Padding(
        padding: screenPadding,
        child: Column(
          children: [
            verticalSpaceMd40,
            _pageTitleView(),
            verticalSpaceMd40,
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
              hintText: "Value of Share , Stock etc",
            ),
          ],
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
