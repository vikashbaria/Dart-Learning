void main() {
/*1.     Take 4 integer variables for subjects. Print the user's total
marks and percentage using string concatenation.*/

//Ye humne 4 varaible ma subjects k number store krliye hain
  int english = 85;
  int urdu = 90;
  int math = 88;
  int computer = 92;

  //Yahan humne jo bhi varaible ma subject k marks liye hain unko + krwa kar totalmark k varaible ma save krwadiya hai
  int totalmark = english + urdu + math + computer;

  //Yahan btana hai k humne total kitne subject liye hain
  int totalsubject = 4;

  //Yahan humne double type li hai or usko percentage ma save krwaya hai with the help of percentage formula jo k hai totalmarks/(totalsubject*100)*100
  double percentage = (totalmark / (totalsubject * 100) * 100);

  //Yahan per uhmne jo haina print krwaya hai usko datatype change kr k as a string

//ab data print krwate hain
  print('Total Marks : ' + totalmark.toString());
  print('Percentage : ' + percentage.toString() + '%');
}


//Alternative method bhi use kr skte hain jese 