// Từ 1 đến 1000 in ra các số chia hết cho 3 và 5 có tổng nhỏ hơn 400.

void main(List<String> args) {
  inRaCacSo(numb: 1000);
}

void inRaCacSo({required int? numb}) {
  int sum = 0;
  for (int i = 1; i <= numb!; i += 1) {
    if (i % 3 == 0 && i % 5 == 0) {
      sum += i;
      if (sum < 400) {
        print(i);
      }
    }
  }
}
