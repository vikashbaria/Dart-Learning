void main() {
  /*
  2.    
Convert temperature from
Fahrenheit to Celsius and Celsius to Fahrenheit using the formulas:
   */
  print('---Temperature Converter---');

  double temp = 25.0;
  String choice = '1';
  // ye hum uper choice 2 krdenge to elseif chalega String choice = '2';

  if (choice == '1') {
    // Celsius to Fahrenheit: (°C × 9/5) + 32
    double fahrenheit = (temp * 9 / 5) + 32;
    print(temp.toString() + '°C = ' + fahrenheit.toStringAsFixed(2) + '°F');
  } else if (choice == '2') {
    // Fahrenheit to Celsius: (°F − 32) × 5/9
    double celsius = (temp - 32) * 5 / 9;
    print(temp.toString() + '°F = ' + celsius.toStringAsFixed(2) + '°C');
  } else {
    print('Invalid option selected. Please enter 1 or 2.');
  }
}
