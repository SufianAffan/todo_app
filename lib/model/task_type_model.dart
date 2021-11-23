class TaskType
{
  final int? typeId;
  final String? typeName;

  TaskType({this.typeId, this.typeName});

  factory TaskType.fromMap(Map mapData)
  {
    return TaskType(
      typeId: mapData['typeId'],
      typeName: mapData['typeName']
    );
  }

  toMap()
  {
    Map<String, dynamic> row = {};
    row = {
      "typeID" : typeId,
      "typeName" : typeName
    };
    return row;
  }

}