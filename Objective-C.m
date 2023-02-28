//My solutions TypeScript

//8 kyu

/*
Multiply
*/

int multiply(int a, int b) {
  return a * b;
}

//---------------------------------------------------

/*
Function 1 - hello world
*/

NSString* greet () {
  return @"hello world!";
}

//---------------------------------------------------

/*
 Even or Odd
*/

NSString* evenOrOdd (NSInteger n){
  return abs(n) % 2 == 0 ? @"Even" : @"Odd";
}

//---------------------------------------------------

/*
 Beginner Series #2 Clock
*/

int past(int h, int m, int s) {
  int houre = h * 3600000;
  int minute  = m * 60000;
  int second = s * 1000;
  return houre + minute  + second;
}

//---------------------------------------------------

/*
 Century From Year
*/

int century(int year) {
  return (year + 99) / 100;
}

//---------------------------------------------------

/*
Is n divisible by x and y?

*/

int isDivisible(int n, int x, int y) {
  if (n % x == 0 && n % y == 0) {
    return true;
  } else {
    return false;
  }
}

//---------------------------------------------------







