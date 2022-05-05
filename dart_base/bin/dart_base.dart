import 'package:dart_base/dart_base.dart' as dart_base;

void main(List<String> arguments) {
  print('Hello world: ${dart_base.calculate()}!');
  String userName = "Báo Flutter";
  bool isLoginedRecently = true;

  const String API_KEY = "nkshdi"; // Luôn luôn lấy giá trị trong ""
  final int AGE = 30; // Có thể thay đổi giá trị

  // int (5,6,800,100)
  // double (số thập phân) : 6,7,9,...77
  //bool (true, false)
  //String ("hello")

  int number = 20;
  //print("Giá trị của number:" + number.toString());
  // print("Giá trị của number: $number");

  number = AGE + 10;

  double point = 8.5;

  print("Giá trị của number: $number");
  bool isSignedUp = false;

  if (isSignedUp)
    print("Đã đăng ký");
  else
    print(" $userName Chưa đăng ký");

  // Null Safety
  // Dart SDK: < 2.12 : Chưa sử dụng Null Safety

  // DartSDK >= 2.12 : Đã sử dụng Null Safety

  int? birthYear; // null : birthYear = null vs version <2.12
  print("$birthYear");

  int tinhTong(int a, int b) {
    return a + b;
  }

  int tong = tinhTong(number, number);
  print("tổng: $tong");

  void printMessage() {
    print("Xin chào");
    return;
  }

  printMessage();

  // dynamic: var, dynamic
  var random1 = 5;
  // random2 = false;
  var random2 = "Hello"; //true, 8.5

  dynamic dynamicVariable = 6; // có thể bỏ từ dynamic
  dynamicVariable = "Xin chào";

  List<int> numberList = [6, 8, 9];
  // index: 0,1,2
  // leghth: 3
  // inRaSoChan(numberList);
  // inRaSoChan(numberList: numberList);
  List<dynamic> dynamicList = [true, 1, "hello", 9.6];

  List dynamicList2 = [true, 1, "hello", 9.6];

  Map<int, String> map = {};
  // Map là một tập hợp của rất nhiều cặp: key : value

  Map<String, dynamic> inforMap = {"name": "Báo Flutter", "age": 30};

  print("Tên: " + inforMap["name"].toString());

  Map inforMap2 = {"name": "Báo Flutter", 3: "hello"};

  //Toán tử gán
  number += 2; // number = number + 2;
  // number %= 2; number = number % 2;
  print("giá trị của number: $number");
  // Toán tử so sánh hoặc, và
  // && <=> * : true = 1; false = 0; true && false = 0; true && true = 1;
  // || <=> + ; true = 1; false = 0; true || true = true ;false || false = false; false || true
  int otherNumber = 39;
  if ((otherNumber != number) && (number > otherNumber))
    print("$number lớn hơn $otherNumber");
  // true && false: flase

  if ((otherNumber == number) || (number < otherNumber))
    print("$number lớn $otherNumber");

  if (otherNumber != number) {
    print("Hai số $number và $otherNumber khác nhau");
  } else if (otherNumber < number) {
    print("Hai số $number và $otherNumber khác nhau");
  }

  // if (isEvenNumber(number: number)) print("số $number là số chẵn");

  if (isEvenNumberUsingSwitchCase(number: number))
    print("số $number là số chẵn");

  //for

  inRaSoLe(numberList: numberList);

  // while
  inRaSoChanWithWhile(numberList: numberList);

  // do... while
  inRaSoChanWithDoWhile(numberList: numberList);
  //list
  List<double> pointList = [];
  List<double> pointList1 = [5.6, 7.8, 9.3];
  // pointList[2] = 9.3;
  pointList1.add(4.6);
  print(pointList1.toString());
}

bool isEvenNumberUsingSwitchCase({required int number}) {
  int modNumber = number % 2;

  switch (modNumber) {
    case 0:
      return true;

    case 1:
      return false;

    default:
      return false;
  }
  print("Kết thúc");
  return false;
}

void inRaSoChan({required List<int>? numberList}) {
  // For in
  /*
  for (int number in numberList) {
    if (number % 2 == 0) print("Số chẵn: $number");
  }*/

  for (int i = 0; i <= numberList!.length - 1; i++) {
    // i ++; <==> i = i + 1
    if (numberList[i] % 2 == 0) print("Số chẵn: " + numberList[i].toString());
    break;
  }
  print("Vòng  For kết thúc");
}

void inRaSoChanWithWhile({required List<int>? numberList}) {
  //6, 8, 9
  int i = 0;
  while (i < numberList!.length) {
    if (numberList[i] % 2 == 0) print("Số chẵn: " + numberList[i].toString());
    i++;
  }
  print("Vòng while kết thúc");
}

void inRaSoChanWithDoWhile({required List<int>? numberList}) {
  //6, 8, 9
  int i = 0;
  do {
    if (numberList![i] % 2 == 0) print("Số chẵn: " + numberList[i].toString());
    i++;
  } while (i < numberList.length);
  print("Vòng Do while kết thúc");
}

void inRaSoLe({required List<int>? numberList}) {
  // For in
  /*
  for (int number in numberList) {
    if (number % 2 == 0) print("Số chẵn: $number");
  }*/

  for (int i = 0; i <= numberList!.length - 1; i++) {
    // i ++; <==> i = i + 1
    if (numberList[i] % 2 != 0) print("Số lẻ: " + numberList[i].toString());
    // break;
    // return;
    print("Vòng" + (i + 1).toString());
    continue;
    print("Vòng tiếp theo");
  }

  print("Vòng  For kết thúc");
}

bool isEvenNumber({required number}) {
  if (number % 2 == 0) return true;
  return false;
}

dynamic tinhHieu(var a, var b) {
  return a - b;
}

tinhHieu2(a, b) {
  return a - b;
}
