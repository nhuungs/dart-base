void main(List<String> args) {
  inRaSoChiaHetCho3(list5);
}

List<int> list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8];
void inRaSoChiaHetCho3(List<int> list5) {
  int i = 0;
  while (i < list5.length) {
    if (list5[i] % 3 == 0) print("Số Chia hết cho 3: " + list5[i].toString());
    i++;
  }
}
