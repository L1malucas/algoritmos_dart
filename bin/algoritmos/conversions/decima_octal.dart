// ignore_for_file: avoid_print

void main() {
  print(decimalOctal(-123));
}

String decimalOctal(int decimalValue) {
  if (decimalValue == 0) {
    return '0';
  }

  bool negative = false;

  if (decimalValue < 0) {
    negative = true;
    decimalValue *= -1;
  }

  String stringOctal = '';
  
  while (decimalValue > 0) {
    int rest = decimalValue % 8;
    decimalValue = decimalValue ~/ 8;
    stringOctal = rest.toString() + stringOctal;
  }

  return negative ? '-$stringOctal' : stringOctal;
}
