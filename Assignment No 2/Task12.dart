void main() {
  /*
  12.  Convert total minutes (e.g., 130) into hours and remaining
minutes.*/
  int totalMinutes = 130;
  int hours = totalMinutes ~/ 60;
  int remainingMinutes = totalMinutes % 60;
  print('Total Time: $hours hour(s) and $remainingMinutes minute(s)');
}
