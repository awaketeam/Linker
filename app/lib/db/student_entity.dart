import 'package:yun_dao/entity.dart';

@Entity(nameInDb: "student", propertyList: [
  Property(name: "name", isPrimary: false, type: PropertyType.STRING),
  Property(name: "age", isPrimary: false, type: PropertyType.INT),
  Property(name: "id", isPrimary: true, type: PropertyType.INT)
])
class StudentEntity {
  String name;
  int age;
  int id;

  StudentEntity({this.name, this.age, this.id});
}
