library korea_banks;

import 'package:flutter/material.dart';

import 'bank.dart';

abstract class BankSelector extends Widget {
  const factory BankSelector.grid(
      {Key? key,
      SliverGridDelegate? gridDelegate,
      IndexedWidgetBuilder? itemBuilder,
      List<Bank> bankList,
      void Function(Bank bank) onBankSelected}) = _GridBankSelector;
  const factory BankSelector.list(
      {IndexedWidgetBuilder? itemBuilder,
      List<Bank> bankList,
      void Function(Bank bank) onBankSelected}) = _ListBankSelector;
}

class _ListBankSelector extends StatelessWidget implements BankSelector {
  final IndexedWidgetBuilder? itemBuilder;
  final List<Bank>? bankList;
  final void Function(Bank bank)? onBankSelected;
  const _ListBankSelector({
    Key? key,
    this.itemBuilder,
    this.bankList,
    this.onBankSelected,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: itemBuilder ??
            (context, index) {
              final bank = bankList![index];
              return InkWell(
                onTap: () => onBankSelected!(bank),
                child: Row(
                  children: [bank.logo, Text(bank.koreanName)],
                ),
              );
            });
  }
}

class _GridBankSelector extends StatelessWidget implements BankSelector {
  final SliverGridDelegate? gridDelegate;
  final IndexedWidgetBuilder? itemBuilder;
  final List<Bank>? bankList;
  final void Function(Bank bank)? onBankSelected;

  const _GridBankSelector(
      {super.key,
      this.gridDelegate,
      this.itemBuilder,
      this.bankList,
      this.onBankSelected});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: gridDelegate ??
            const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 100),
        itemCount: bankList!.length,
        itemBuilder: itemBuilder ??
            (context, index) {
              final bank = bankList![index];
              return InkWell(
                onTap: () => onBankSelected!(bank),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: Column(
                    children: [
                      Expanded(
                          child: bank.logo),
                      Text(bank.koreanName)
                    ],
                  ),
                ),
              );
            });
  }
}
