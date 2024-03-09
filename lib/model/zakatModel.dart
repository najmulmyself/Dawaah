class ZakatAsset {
  double goldValue;
  double silverValue;
  double cash;
  double bankAmount;
  double others;

  ZakatAsset({
    this.goldValue = 0,
    this.silverValue = 0,
    this.cash = 0,
    this.bankAmount = 0,
    this.others = 0,
  });

  ZakatAsset copyWith({
    double? goldValue,
    double? silverValue,
    double? cash,
    double? bankAmount,
    double? others,
  }) {
    return ZakatAsset(
      goldValue: goldValue ?? this.goldValue,
      silverValue: silverValue ?? this.silverValue,
      cash: cash ?? this.cash,
      bankAmount: bankAmount ?? this.bankAmount,
      others: others ?? this.others,
    );
  }
}

class ZakatExpense {
  double owedAmount;
  double expenseAmount;
  double others;

  ZakatExpense({
    this.owedAmount = 0,
    this.expenseAmount = 0,
    this.others = 0,
  });

  ZakatExpense copyWith({
    double? owedAmount,
    double? expenseAmount,
    double? others,
  }) {
    return ZakatExpense(
      owedAmount: owedAmount ?? this.owedAmount,
      expenseAmount: expenseAmount ?? this.expenseAmount,
      others: others ?? this.others,
    );
  }
}
