String sum(String text) {
  List str = text.split('+');
  int a = int.parse(str[0]);
  int b = int.parse(str[1]);
  int sum = a + b;
  return sum.toString();
}

String sub(String text) {
  List str = text.split('-');
  int a = int.parse(str[0]);
  int b = int.parse(str[1]);
  int sub = a - b;
  return sub.toString();
}

String mul(String text) {
  List str = text.split('X');
  int a = int.parse(str[0]);
  int b = int.parse(str[1]);
  int mul = a * b;
  return mul.toString();
}

String div(String text) {
  List str = text.split('/');
  int a = int.parse(str[0]);
  int b = int.parse(str[1]);
  double div = a / b;
  return div.toString();
}
