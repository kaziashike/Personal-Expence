class Transaction {
  String id;
  String title;
  int cost;
  DateTime date;
  Transaction(
      {required this.id,
      required this.title,
      required this.cost,
      required this.date});
}

List<Transaction> trans = [
  Transaction(id: 't1', title: 'Shoe', cost: 1500, date: DateTime.now()),
  Transaction(id: 't2', title: 'Grosery', cost: 3000, date: DateTime.now())
];

List history = [0, 0, 0, 0, 0, 0, 0];
int returnTotal() {
  trans.map((e) {if(e.date)});
  return 0;
}
