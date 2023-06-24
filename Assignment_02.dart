

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




///Q.10: Write a Dart code that takes in a list of strings and removes any duplicate elements, 
///returning a new list without duplicates. The order of elements in the new list should be the same as in the original list.
///
///ANS

List<String> removeDuplicates(List<String> list) {
  return list.toSet().toList();
}


  List<String> originalList = ['apple', 'banana', 'orange', 'apple', 'grape', 'banana'];
  List<String> uniqueList = removeDuplicates(originalList);
  
  print('Original List: $originalList');
  print('Unique List: $uniqueList');

///Q 11: Write a Dart code that takes in a list and an integer n as parameters.
/// The program should print a new list containing the first n elements from the original list.
/// 
/// Ans


void printFirstNElements(List<dynamic> list, int n) {
  List<dynamic> newList = list.sublist(0, n);
  print('New List: $newList');
}
  List<dynamic> originalList_ = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int n = 5;
  
  print('Original List: $originalList_');
  print('n: $n');
  printFirstNElements(originalList_, n);

///Q.12: Write a Dart code that takes in a list of strings 
///and prints a new list with the elements in reverse order. The original list should remain unchanged.
///
///Ans


void printReversedOrder(List<String> list) {
  List<String> reversedList = List.from(list.reversed);
  print('Reversed List: $reversedList');
}


  List<String> originList_ = ['apple', 'banana', 'orange', 'grape'];
  
  print('Original List: $originList_');
  printReversedOrder(originList_);



///Q.13: Implement a code that takes in a list of integers and returns a new list containing only the unique elements 
///from the original list. The order of elements in the new list should be the same as in the original list.
///
///Ans


List<int> getUniqueElements(List<int> list) {
  return list.toSet().toList();
}

List<int> list_number = [1, 2, 3, 4, 2, 1, 5, 3, 6];
  List<int> uniqueList_Get = getUniqueElements(list_number);

  print('Original List: $list_number');
  print('Unique List: $uniqueList_Get');


  ///Q.14: Write a Dart code that takes in a list of integers and 
  ///prints a new list with the elements sorted in ascending order. The original list should remain unchanged.
  ///
  ///Ans

void printSortedAscending(List<int> list) {
  List<int> sortedList = List.from(list);
  sortedList.sort();
  print('Sorted List (Ascending): $sortedList');
}

List<int> list_num_ = [5, 2, 8, 1, 10];
  
  print('Original List: $list_num_');
  printSortedAscending(list_num_);


  ///Q.15: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers. 
  ///The program should take in the original list as a parameter and print a new list containing only the positive numbers.
  ///
  ///Ans

  void printPositiveNumbers(List<int> list) {
  List<int> positiveList = list.where((num) => num >= 0).toList();
  print('Positive Numbers: $positiveList');
}
List<int> list_Oforder = [5, -2, 8, -1, 10, -3];
  
  print('Original List: $list_Oforder');
  printPositiveNumbers(list_Oforder);

///Q.16: Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers. 
///The program should take in the original list as a parameter and print a new list containing only the even numbers.
///
///Ans

void printEvenNumbers(List<int> list) {
  List<int> evenList = list.where((num) => num % 2 == 0).toList();
  print('Even Numbers: $evenList');
}


List<int> num_list = [5, 2, 8, 1, 10, 3];
  
  print('Original List: $num_list');
  printEvenNumbers(num_list);


///Q.17: Given a list of integers, write a Dart code that uses the map() method to create a 
///new list with each value squared. The program should take in the original list as a parameter and print the new list.
///
///Ans

void printSquaredValues(List<int> list) {
  List<int> squaredList = list.map((num) => num * num).toList();
  print('Squared Values: $squaredList');
}

List<int> list_Int = [1, 2, 3, 4, 5];
  
  print('Original List: $list_Int');
  printSquaredValues(list_Int);


///Q.18: Create a map named "person" with the following key-value pairs: "name" as "John", "age" as 25, "isStudent" as true. Write a Dart code to check if the person is both a student and over 18 years old.
/// Print "Eligible" if both conditions are true, otherwise print "Not eligible".
/// 
/// Ans

void checkEligibility(Map<String, dynamic> person) {
  String name = person['name'];
  int age = person['age'];
  bool isStudent = person['isStudent'];

  if (isStudent && age > 18) {
    print('$name is eligible.');
  } else {
    print('$name is not eligible.');
  }
}

Map<String, dynamic> person = {
    'name': 'Sameer',
    'age': 25,
    'isStudent': true,
  };

  checkEligibility(person);

///Q.19: Given a map representing a product with keys "name", "price", and "quantity", write Dart code to check if the product is in stock.
/// If the quantity is greater than 0, print "In stock", otherwise print "Out of stock".
/// 
/// Ans

void checkStock(Map<String, dynamic> product) {
  String name = product['name'];
  int quantity = product['quantity'];

  if (quantity > 0) {
    print('$name is in stock.');
  } else {
    print('$name is out of stock.');
  }
}
Map<String, dynamic> product = {
    'name': 'Dairy Milk',
    'price': 9.99,
    'quantity': 5,
  };

  checkStock(product);

///Q.20: Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color" as "Red", "isSedan" as true. Write Dart code to check if the car is a sedan and red in color. 
///Print "Match" if both conditions are true, otherwise print "No match".
///
///Ans

void checkCar(Map<String, dynamic> car) {
  String brand = car['brand'];
  String color = car['color'];
  bool isSedan = car['isSedan'];

  if (isSedan && color == 'Red') {
    print('$brand is a red sedan.');
  } else {
    print('$brand is not a red sedan.');
  }
}

Map<String, dynamic> car = {
    'brand': 'Toyota',
    'color': 'Blue',
    'isSedan': true,
  };

  checkCar(car);

///Q.21: Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if 
///the user is an active admin. If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin".
///
///Ans

void checkUser(Map<String, dynamic> user) {
  String name = user['name'];
  bool isAdmin = user['isAdmin'];
  bool isActive = user['isActive'];

  if (isAdmin && isActive) {
    print('$name is an active admin.');
  } else {
    print('$name is not an active admin.');
  }
}

Map<String, dynamic> user = {
    'name': 'Ali',
    'isAdmin': true,
    'isActive': true,
  };

  checkUser(user);

///Q.22: Given a map representing a shopping cart with keys as product names and values as quantities, write Dart code to check if 
///a product named "Apple" exists in the cart. Print "Product found" if it exists, otherwise print "Product not found".
///
///Ans

void checkProduct(Map<String, int> cart) {
  if (cart.containsKey('Apple')) {
    print('Product found');
  } else {
    print('Product not found');
  }
}

Map<String, int> cart = {
    'Orange': 1,
    'Banana': 2,
    'Orange': 3,
    'Mango': 4
    
  };

  checkProduct(cart);



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
