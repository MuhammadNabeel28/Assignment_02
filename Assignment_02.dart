void main(){
///Q.1: Create a list of names and print all names using the List method.
///
///ANS

var list = ['Apple', 'Orange', 'Red Apple', 'Banana', 'Painaple'];
print(list);

// ///Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
// ///
// ///ANS

var list_Empty =[];
list_Empty.add('Sunday');
list_Empty.add('Monday');
list_Empty.add('Tuesday');
list_Empty.add('Wednesday');
list_Empty.add('Thursday');
list_Empty.add('Friday');
list_Empty.add('Saturday');
print(list_Empty);


// ///Q.3: Create a list of Days and remove one by one from the end of list.
// ///
// ///Ans

var list_Days =['Sunday', 'Monday', 'Tuesday', 'Wedneday', 'Thursday', 'Friday', 'Saturday'];
list_Days.removeLast();
print(list_Days);
list_Days.removeLast();
print(list_Days);
list_Days.removeLast();
print(list_Days);
list_Days.removeLast();
print(list_Days);
list_Days.removeLast();
print(list_Days);
list_Days.removeLast();
print(list_Days);


///Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.
///
///Ans


var numbers_ =[1,3,9,30,40,28,17,94,100,23,12,30];
var smallestNumbers = numbers_.where ((element) => element < 30);
print(smallestNumbers);
var gratestNumbers = numbers_.where ((element) => element > 30);
print(gratestNumbers);

///Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
///
///ANs


Map<String, String> contactmap ={
  'Nokia': '3310',
  'Samsung': 'S20 Ultra',
  'Vivo': 'S21',
  'Iphone': '14pro Max',
  'Huwawi': 'S16',
  'Inphinix': 'S32'
};

List<String> KeysWithLengthFour = contactmap.keys.where((key) => key.length == 4).toList();
print('Keys with lenght 4: $KeysWithLengthFour');

///Q.5 Create Map variable name world then inside it create countries Map, Key will be the name country & country value 
///will have another map having capitalCity, currency and language to it. by using any country key print all 
///the value of Capital & Currency.
///
///Ans

 Map<String, Map<String, dynamic>> world = {
    'USA': {
      'capitalCity': 'Washington, D.C.',
      'currency': 'US Dollar',
      'language': 'English',
    },
    'Germany': {
      'capitalCity': 'Berlin',
      'currency': 'Euro',
      'language': 'German',
    },
    'Japan': {
      'capitalCity': 'Tokyo',
      'currency': 'Japanese Yen',
      'language': 'Japanese',
    },
  };

  String countryKey = 'Germany'; 

  if (world.containsKey(countryKey)) {
     Map<String, dynamic> countryInfo = world[countryKey]!;
    String capitalCity = countryInfo['capitalCity'];
    String currency = countryInfo['currency'];

    print('Capital City of $countryKey: $capitalCity');
    print('Currency of $countryKey: $currency');
  } else {
    print('Country not found!');
  }

// Q.7:
// Map<String, double> expenses = {
//   'sun': 3000.0,
//   'mon': 3000.0,
//   'tue': 3234.0,
// };

// Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' 
//to expenses and set its value to 5000.0 then print expenses.

 Map<String, double> expenses = {
  'sun': 3000.0,
  'mon': 3000.0,
  'tue': 3234.0,
};


if(!expenses.containsKey('fri')){
   expenses["fri"] = 5000.0;
  

}
print(expenses);


///Q.8: remove all false values from below list by using removeWhere or retainWhere property.

// List<Map<String, bool>> usersEligibility = [
//     {'name': 'John', 'eligible': true},
//     {'name': 'Alice', 'eligible': false},
//     {'name': 'Mike', 'eligible': true},
//     {'name': 'Sarah', 'eligible': true},
//     {'name': 'Tom', 'eligible': false},
//   ];

  // usersEligibility.removeWhere((user) => user['eligible'] == false);

  // print(usersEligibility);

  
///Q.9: Given a list of integers, write a dart code that returns the maximum value from the list.
///
///ANS

  List<int> numbers = [10, 5, 8, 15, 3, 12];

  int max = numbers.reduce((value, element) => value > element ? value : element);

  print("Maximum value: $max");


// ///Q.4: Create a list of numbers and create one empty list, now check for every index number is EVEN or ODD.
// /// if number is even then add true into empty list and if number is odd then add false into empty list,
// ///  both list needs to print at the end.
// ///
// ///Ans


// List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
// List<bool> evenOddList = numbers.map((number) => number % 2 == 0).toList();


// print("Numbers: $numbers");
// print("Even/Odd List: $evenOddList");

// ///Q.5: Create a list of numbers & write a program to get the smallest & greatest number from a list.
// ///
// ///Ans

// var list_number =[1,5,4,7,6,9,23,14,17];
// list_number.sort();
// print(list_number);

// var reversed =List.of(list_number.reversed);
// print(reversed);


// ///Q.6: Remove all false values from Q4 list by using removeWhere or retainWhere property.
// ///
// ///Ans

// evenOddList.removeWhere((value) => value == false);
// print("Filtered Even/Odd List: $evenOddList");

// ///Q.7: Create a list of numbers & write a program that removes all even numbers from the list and adds 1 to each odd number left.
// ///
// ///Ans

//   List<int> List_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  
//   List_numbers.removeWhere((List_numbers) => List_numbers % 2 == 0);
//   List_numbers = List_numbers.map((List_numbers) => List_numbers + 1).toList();

//   print("Numbers: $List_numbers");

// ///Q.8: From Q3 write a program that prints the days that start with the letter "S".
// ///
// ///Ans
// var list_Days_ =['Sunday', 'Monday', 'Tuesday', 'Wedneday', 'Thursday', 'Friday', 'Saturday'];

//  list_Days_ = list_Days_.where((day) => day.startsWith("S")).toList();
//  print("Days starting with 'S': $list_Days_");

 

  
}
