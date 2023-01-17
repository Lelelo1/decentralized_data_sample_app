class Activity {
  DateTime dateTime;
  String name;

  Activity(this.dateTime, this.name);

  static List<Activity> get exampleActivities => [
        Activity(DateTime.now().subtract(const Duration(days: 3)), "kör"),
        Activity(DateTime.now().subtract(const Duration(days: 3)), "läxor"),
        Activity(DateTime.now().subtract(const Duration(days: 3)), "simning")
      ];
}
