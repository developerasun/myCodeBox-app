import 'dart:ffi';

void main() {
  // playBasic();
  // doList();
  // doFuture();
  // doTernary();
  doTypeDef();
}

typedef Operation(int num1, int num2); // saving function signature
void doTypeDef() {
  int add(int x, int y) {
    print(x + y);
    return x + y;
  }

  int substract(int x, int y) {
    print(x - y);
    return x - y;
  }

  Operation op = add;
  op(1, 2); // 3

  op = substract;
  op(1, 2); // -1

  void calculate(int x, int y, Operation op) {
    op(x, y);
  }

  calculate(5, 1, add); // 6
  calculate(5, 1, substract); // 4
}

void doTernary() {
  final myTrue = 2;
  myTrue > 4 ? print("wow") : print("no wow");
}

void doFuture() {
  final myFinal = 3; // final type set only once
  // myFinal = 2; // can't do
  const fixedConstant = 3;
  // fixedConstant = 2; // can't do
  // Future in Dart == Promise in Javascript
  Future.delayed(Duration(seconds: 4), (() => print("hey")));
}

void doList() {
  List myList = []; // dynamic list
  myList.add(1);
  myList.add(2);
  myList.add(3);
  myList.add("hey"); // add list element
  myList.removeAt(2); // delete list element

  for (int i = 0; i < myList.length; i++) {
    print(myList[i]);
  }

  List<String> myStrList = []; // static typed list
  myStrList.add("only");
  myStrList.add("str");
  print(myStrList);

  List<int> myFixedIntList =
      new List.filled(3, 0, growable: false); // fixed size list
  myFixedIntList[0] = 1;
  print(myFixedIntList);

  List<String> myFixedStringList =
      new List.generate(3, ((index) => "hey"), growable: false);
  print(myFixedStringList);
}

void playBasic() {
  print("hello dart");
  var name = "Jake"; // type interence, statically typed
  int myInt = 3;
  double myDouble = 44;
  String myStr = "Sung"; // start with capital letter
  print("$name $myStr"); // Jake Sung , string interpolation
  bool learnDart = true;

  dynamic newName = "not jake";

  newName = 4; // can change to another type

  var dynamicName; // not initialized, infered as dynamic
}
