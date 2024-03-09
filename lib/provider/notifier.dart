import 'package:dawaah/model/zakatModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AssetNotifier extends StateNotifier<ZakatAsset> {
  AssetNotifier() : super(ZakatAsset());

  void updateGoldValue(double value) {
    state.goldValue = value;
  }

  void updateSilverValue(double value) {
    state.silverValue = value;
  }

  void updateCash(double value) {
    state.cash = value;
  }

  void updateBankAmount(double value) {
    state.bankAmount = value;
  }

  void updateOthers(double value) {
    state.others = value;
  }

  double calculateTotalAsset() {
    return state.goldValue +
        state.silverValue +
        state.cash +
        state.bankAmount +
        state.others;
  }
}

class ExpenseNotifier extends StateNotifier<ZakatExpense> {
  ExpenseNotifier() : super(ZakatExpense());

  void updateOwedAmount(double value) {
    state.owedAmount = value;
  }

  void updateExpenseAmount(double value) {
    state.expenseAmount = value;
  }

  void updateOthers(double value) {
    state.others = value;
  }

  double calculateTotalExpense() {
    return state.owedAmount + state.expenseAmount + state.others;
  }
}
