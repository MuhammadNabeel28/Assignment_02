void main(){
///Q.1: Create a list of names and print all names using the List method.
///
///ANS

var list = ['Apple', 'Orange', 'Red Apple', 'Banana', 'Painaple'];
print(list);

///Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
///
///ANS

var list_Empty =[];
list_Empty.add('Sunday');
list_Empty.add('Monday');
list_Empty.add('Tuesday');
list_Empty.add('Wednesday');
list_Empty.add('Thursday');
list_Empty.add('Friday');
list_Empty.add('Saturday');
print(list_Empty);


///Q.3: Create a list of Days and remove one by one from the end of list.
///
///Ans

var list_Days =['Sunday', 'Monday', 'Tuesday', 'Wedneday', 'Thursday', 'Friday', 'Saturday'];
list_Days.removeAt(0);
print(list_Days);
list_Days.removeAt(0);
print(list_Days);
list_Days.removeAt(0);
print(list_Days);
list_Days.removeAt(0);
print(list_Days);
list_Days.removeAt(0);
print(list_Days);
list_Days.removeAt(0);
print(list_Days);


///Q.4: Create a list of numbers and create one empty list, now check for every index number is EVEN or ODD.
/// if number is even then add true into empty list and if number is odd then add false into empty list,
///  both list needs to print at the end.
///
///Ans


List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
List<bool> evenOddList = numbers.map((number) => number % 2 == 0).toList();


print("Numbers: $numbers");
print("Even/Odd List: $evenOddList");

///Q.5: Create a list of numbers & write a program to get the smallest & greatest number from a list.
///
///Ans

var list_number =[1,5,4,7,6,9,23,14,17];
list_number.sort();
print(list_number);

var reversed =List.of(list_number.reversed);
print(reversed);


///Q.6: Remove all false values from Q4 list by using removeWhere or retainWhere property.
///
///Ans

evenOddList.removeWhere((value) => value == false);
print("Filtered Even/Odd List: $evenOddList");

///Q.7: Create a list of numbers & write a program that removes all even numbers from the list and adds 1 to each odd number left.
///
///Ans

  List<int> List_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  
  List_numbers.removeWhere((List_numbers) => List_numbers % 2 == 0);
  List_numbers = List_numbers.map((List_numbers) => List_numbers + 1).toList();

  print("Numbers: $List_numbers");

///Q.8: From Q3 write a program that prints the days that start with the letter "S".
///
///Ans
var list_Days_ =['Sunday', 'Monday', 'Tuesday', 'Wedneday', 'Thursday', 'Friday', 'Saturday'];

 list_Days_ = list_Days_.where((day) => day.startsWith("S")).toList();
 print("Days starting with 'S': $list_Days_");

 

  
}
