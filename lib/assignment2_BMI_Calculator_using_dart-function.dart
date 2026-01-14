void main() {
  //Task c
  print('task c');
  print(
    'task A BMI Calculation; BMI value is ${calculateBMI(58.08, 1.7)}',
  ); //1 time
  print('BMI value is ${calculateBMI(65.08, 2.00)}'); //2 time
  print('task B BMI Category Function; Position is ${getBMICategory()} ');
}

//task a
double calculateBMI(double weight, double height) {
  double bmi = weight / (height * height);
  return bmi;
}

//Task B
String getBMICategory({double value = 28.42}) {
  String position = '';
  if (value < 18.5) {
    position = 'Underweight';
  } else if (value >= 18.5 && value <= 24.9) {
    position = 'Normal';
  } else if (value >= 25 && value <= 29.9) {
    position = 'Overweight';
  } else if (value == 30 || value > 30) {
    position = ' Obese';
  }
  return position;
}
