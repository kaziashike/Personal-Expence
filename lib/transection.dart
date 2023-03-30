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
  for (int x = 0; x < trans.length; x++) {
    print(DateFormat('EEEE').format(trans[x].date));
    if (DateFormat('EEEE').format(trans[x].date) == 'Saturday') {
      history[0] += trans[x].cost;
    } else if (DateFormat('EEEE').format(trans[x].date) == 'Sunday') {
      history[1] += trans[x].cost;
    } else if (DateFormat('EEEE').format(trans[x].date) == 'Monday') {
      history[2] += trans[x].cost;
    } else if (DateFormat('EEEE').format(trans[x].date) == 'Tuesday') {
      history[3] += trans[x].cost;
    } else if (DateFormat('EEEE').format(trans[x].date) == 'Wednesday') {
      history[4] += trans[x].cost;
    } else if (DateFormat('EEEE').format(trans[x].date) == 'Thursday') {
      history[5] += trans[x].cost;
    } else {
      history[6] += trans[x].cost;
    }
  }
  ;
  int total = 0;
  for (int x = 0; x <= 6; x++) {
    total += history[x];
  }
  ;
  print(total);
  print(history.toString());
  return total;
}
