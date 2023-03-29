import 'package:intl/intl.dart';

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

List<int> history = [0, 0, 0, 0, 0, 0, 0];
int returnTotal() {
  trans.map((e) {
    if (DateFormat('EEEE').format(e.date) == 'Saturday') {
      history[0] += e.cost;
    } else if (DateFormat('EEEE').format(e.date) == 'Sunday') {
      history[1] += e.cost;
    } else if (DateFormat('EEEE').format(e.date) == 'Monday') {
      history[2] += e.cost;
    } else if (DateFormat('EEEE').format(e.date) == 'Tuesday') {
      history[3] += e.cost;
    } else if (DateFormat('EEEE').format(e.date) == 'Wednesday') {
      history[4] += e.cost;
    } else if (DateFormat('EEEE').format(e.date) == 'Thursday') {
      history[5] += e.cost;
    } else {
      history[6] += e.cost;
    }
  });
  int total = 0;
  for (int x = 0; x <= 6; x++) {
    total += history[x];
  }
  ;
  return total;
}
