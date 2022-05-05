void main() {
  for (int i = 2; i <= 1000; i++) {
    checkPrime(i);
  }
}

void checkPrime(int num) {
  int m = 0;
  bool isPrimerNumber = true;
  m = num ~/ 2;
  for (int index = 2; index <= m; index++) {
    if (num % index == 0) {
      isPrimerNumber = true;
      break;
    }
  }

  if (isPrimerNumber == true) {
    print('$num');
  }
}
