void main(){


  Map<String,double> productPrice={
    "Laptop": 1500.00,
    "Smartphone": 800.00,
    "Headphones": 200.00,
    "Tablet": 400.00
  };

  Map<String,dynamic> person={
    "name":"Sunil Shrestha",
    "age":21,
    "salary":150000.00,
    "isMarried":false,
    "programmingLanguage":["Dart","Python","JavaScript"],
    "currentDate":DateTime.now(),
    "birthDate":DateTime(2002,10,15)
  };  

  print(productPrice["Laptop"]);
  print(person);


}