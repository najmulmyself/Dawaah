import 'package:dawaah/model/zakatModel.dart';
import 'package:dawaah/provider/notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final assetNotifierProvider = StateNotifierProvider<AssetNotifier, ZakatAsset>((ref) {
  return AssetNotifier();
});

final expenseNotifierProvider = StateNotifierProvider<ExpenseNotifier, ZakatExpense>((ref) {
  return ExpenseNotifier();
});
