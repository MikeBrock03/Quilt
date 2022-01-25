import 'short_trans.dart';

class ShortTransList {
  static final _allTransactions = <Transaction>[
    Transaction(
        userid: 0,
        category: Category.expense,
        id: 0,
        amount: 400.99,
        name: 'Kauai Jet Ski Resort',
        date: '2021-12-30'),
    Transaction(
        userid: 1,
        category: Category.add,
        id: 1,
        amount: 200.00,
        name: 'Jeremy Merritt',
        date: '2021-12-29',
        subtitle: 'lets gooooo'),
    Transaction(
        userid: 2,
        category: Category.add,
        id: 2,
        amount: 200.00,
        name: 'Lucy Duckworth',
        date: '2021-12-29',
        subtitle: 'im so excited guys'),
    Transaction(
        userid: 0,
        category: Category.expense,
        id: 0,
        amount: 500.50,
        name: 'McDonald\'s',
        date: '2021-12-29')
  ];

  static List<Transaction> loadShortTransactions() {
    return _allTransactions;
  }
}
