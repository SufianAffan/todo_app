class Task
{
  final int? id;
  final dynamic taskText;
  final bool? status;
  final int? typeId;

  Task({this.typeId, this.id, this.taskText, this.status});

  factory Task.fromMap(Map mapData)
  {
    return Task(
      id: mapData['id'],
      taskText: mapData['taskText'],
      status: mapData['status'],
      typeId: mapData['typeId']
    );
  }

  toMap()
  {
    Map<String, dynamic> row = {};
    row = {
      "id" : id,
      "taskText" : taskText,
      "status" : status,
      "typeId" : typeId
    };

    return row;
  }

}