// Từ 1-1000 in ra các số nguyên tố có tổng nhỏ hơn 400.

void tongSo() {
  for (int i = 2; i < 100; i++) {
    int sum = 0;
    inRaSoNguyenTo(num: i);
  }
  void inRaSoNguyenTo({required int num}) {
    int m = 0;
    // int primerNumber;
    bool isPrimerNumber = true;
    m = num ~/ 2;
    for (int index = 2; index <= m; index++) {
      if (num % index == 0) {
        isPrimerNumber = false;
      }
      if (isPrimerNumber == true) {
        print(num);
      }
    }
  }
}

main() {
  tongSo();
}

// void inRaSoNguyenTo({required int num}) {
//   int m = 0;
//   // int primerNumber;
//   bool isPrimerNumber = true;
//   m = num ~/ 2;
//   for (int index = 2; index <= m; index++) {
//     if (num % index == 0) {
//       isPrimerNumber = false;
//     }
//     if (isPrimerNumber == true) {
//       // print(num);
//     }
//   }
// }
