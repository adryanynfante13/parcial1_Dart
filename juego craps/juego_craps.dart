import 'dart:math';

void main(){

void craps() {
  int point = 0;
  var random = Random();
  bool shouldGameContinue = false;
  while (!shouldGameContinue) {
    int roll1 = random.nextInt(6) + 1;
    int roll2 = random.nextInt(6) + 1;
    int sum = roll1 + roll2;

    print('You rolled $roll1 and $roll2 for a total of $sum');

    if (point == 0) {
      if (sum == 7 || sum == 11) {
        print('Ganaste');
        shouldGameContinue = true;
      } else if (sum == 2 || sum == 3 || sum == 12) {
        print('Perdiste');
        shouldGameContinue = true;
      } else {
        point = sum;
        print('Punto: $point');
      }
    } else {
      if (sum == 7) {
        print('Perdiste');
        shouldGameContinue = true;
      } else if (sum == point) {
        print('Ganaste');
        shouldGameContinue = true;
      }
    }
  }
}
}
