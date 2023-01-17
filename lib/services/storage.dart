import 'package:decentralized_data_sample_app/models/activity.dart';
import 'package:decentralized_data_sample_app/models/login.dart';

class Storage {
  static Future<List<Activity>> getActivitiesFromPersonalCloud(
      Login login) async {
    return Future.sync(() => Activity.exampleActivities);
  }
}
