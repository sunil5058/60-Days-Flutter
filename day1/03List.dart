void main(){
 List <String> programmingLanguage=["Dart","python","JavaScript","C++","Java"];
List <int> numbers=[1,2,3,4,5];
//Accessing list elements 
print(programmingLanguage[0]);
//length of list
print (programmingLanguage.length);

print("Course Name :${programmingLanguage[0]}: rate.${numbers[1]}");


//adding element to list
programmingLanguage.add("Golang");


print(programmingLanguage);

}