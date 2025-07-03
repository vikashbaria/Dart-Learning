void main() {
  int totalDays = 17;

  int weeks = totalDays ~/ 7;
  // 1 hafta 7 din k baraber hota hai to phele hum yahan se dekh lenge k kitne hafter huwe ye delta sign reminder value nhi leta
  int remainingDays = totalDays % 7; // remainder days

  print('Total Days: $totalDays');
  print('Weeks: $weeks');
  print('Remaining Days: $remainingDays');
}
