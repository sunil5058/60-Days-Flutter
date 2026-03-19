void main(){
  String name ="Sunil Shrestha"; // String
  int age = 21; // Integer
  double salary=150000.00; // Double
  bool isMarried = false; // Boolean
  List <String> programmingLanguage=["Dart", "Python", "JavaScript"]; // List
  DateTime currentDate=DateTime.now(); // DateTime
  DateTime birthDate=DateTime(2002, 10, 15); // DateTime

  print(name);
  print(age);
  print(salary);
  print(isMarried);
  print(programmingLanguage);
  print(" my date of birth is ${birthDate.year}-${birthDate.month}-${birthDate.day}");
  print(currentDate);

  print("My name is $name. I am $age years old. my salary is $salary and I am married: $isMarried. I know programming languages:$programmingLanguage");
}