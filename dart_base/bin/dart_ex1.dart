// Từ 1 đến 1000 in ra các số chẵn mà tổng các số đó không lớn hơn 400
void main(List<String> args) {
  inRaSoChan(numb: 1000); //
}

void inRaSoChan({required int? numb}) {
  int sum = 0; // Tổng các số chẵn = 0;
  for (int i = 1; i <= numb!; i += 2) {
    sum += i;
    if (sum < 400) {
      print(i);
    }
  }
}
