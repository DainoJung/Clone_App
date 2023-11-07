// ignore_for_file: unused_element

main() {
  // 일반식
  // int add(int a, int b) {
  //   return a + b;
  // }

  // 람다식
  // (int a, int b) => a + b;

  // int add(int a, int b) => a + b;

  // final add = (int a, int b) => a + b;

  //전달
  // final add = (int a, int b) => a + b;

  // run(add, 1, 3);
}

// void run(int Function(int a, int b) add, int a, int b) {
//   final sum = add(a, b);
// }

//함수
class Book {
  final String name;
  int price;

  Book(this.name, this.price);

  void discounnt(int persent) {
    price / (100 - persent);
  }

  // final changName = (String changeName) => name = changeName;
}
