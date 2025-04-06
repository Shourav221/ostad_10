void main() {
  List students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78]
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95]
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85]
    },
  ];

  Map<String, double> averages = {};

  for (var student in students) {
    String name = student['name'];
    List scores = student['scores'];

    double total = 0;
    for (var score in scores) {
      total += score;
    }
    double average = total / scores.length;

    averages[name] = double.parse(average.toStringAsFixed(2));
  }

  var sortedList = averages.entries.toList();
  sortedList.sort((a, b) => b.value.compareTo(a.value));

  Map<String, double> sortedAverages = {};
  for (var entry in sortedList) {
    sortedAverages[entry.key] = entry.value;
  }

  print(sortedAverages);
}
