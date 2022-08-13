import 'package:flutter_to_do_app/database/db_helper.dart';
import 'package:flutter_to_do_app/models/task.dart';
import 'package:get/get.dart';

class TaskController extends GetxController{
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  Future<int> addTask({Task? task}) async {
    return await DBHelper.insert(task);
  }

  var taskList = <Task>[].obs;

  void getTask() async {
    List<Map<String, dynamic>> tasks = await DBHelper.query();
    taskList.assignAll(tasks.map((data) => new Task.fromJson(data)).toList());
  }

  void delete(Task task){
    DBHelper.delete(task);
    getTask();
  }

  void markTaskCompleted(int id) async {
    await DBHelper.update(id);
    getTask();
  }
}