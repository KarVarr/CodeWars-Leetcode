//My solutions TypeScript

//8 kyu

/*
Even or Odd
*/

export function even_or_odd(n:number):string {
  return n % 2 == 0 ? "Even" : "Odd"
}

//---------------------------------------------------

/*
Reversed Words
*/

export function reverseWords(str: string): string {
  return str.split(" ").reverse().join(" "); 
}

//---------------------------------------------------

/*
Invert values
*/

export function invert(array: number[]): number[] {
   return array.map(value => value >= 0 ? value * -1 : Math.abs(value));
}

//---------------------------------------------------

/*
Third Angle of a Triangle
*/

export const otherAngle = (a: number, b: number): number => {
  return 180 - (a + b);
}

//---------------------------------------------------

/*
Filter out the geese
*/

export function gooseFilter (birds: string[]): string[] {
  const geese: string[] = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"];
  return birds.filter(e => !geese.includes(e));
}

//---------------------------------------------------

/*
Keep Hydrated!
*/

export function litres(time: number): number {
  return Math.floor(time * 0.5);
}

//---------------------------------------------------

/*
How many lightsabers do you own?
*/

export function howManyLightsabersDoYouOwn(name?: any): number {
    return name == "Zach" ? 18 : 0
}

//---------------------------------------------------

/*
Grasshopper - Debug sayHello
*/

export function sayHello(name: string): string {
  return `Hello, ${name}`
}

//---------------------------------------------------

/*
Convert a Boolean to a String
*/

export const booleanToString = (b:boolean):string =>  b == true ? "true" : "false"

//---------------------------------------------------

/*
Powers of 2
*/

export function powersOfTwo(n:number):number[]{
  return [...Array(n+1).keys()].map(i => 2 ** i);
}

//---------------------------------------------------

/*
Quarter of the year

*/

export function quarterOf(month: number): number {
  return Math.ceil(month / 3);
}

//---------------------------------------------------

/*
Quarter of the year

*/

export function simpleMultiplication(num: number): number{
  return num % 2 == 0 ? num * 8 : num * 9
}

//---------------------------------------------------

/*
Beginner Series #2 Clock
*/

export function past(h: number, m: number, s: number): number {
  let houre = h * 3600000
  let minute = m * 60000
  let second = s * 1000
  return houre + minute + second
}

//---------------------------------------------------

/*
String repeat

*/

export function repeatStr(n: number, s: string): string {
  return `${s.repeat(n)}`;
}

//---------------------------------------------------

/*
Beginner - Reduce but Grow
*/

export function grow(arr: number[]): number {
  return arr.reduce((a, b) => a * b, 1)
}

//---------------------------------------------------

/*
added Cat years, Dog years
*/

export function humanYearsCatYearsDogYears(humanYears: number): [number, number, number] {
  let cat: number = 0
  let dog: number = 0
  if (humanYears == 1 ) {
    cat = 15
    dog = 15
  } else if (humanYears == 2) {
    cat = 24
    dog = 24
  } else  {
    cat = 24 + ((humanYears - 2) * 4)
    dog = 24 + ((humanYears - 2) * 5)
  }
  return [humanYears,cat,dog];
}

//---------------------------------------------------

/*
Function 2 - squaring an argument
*/

export const square = (s: number): number => s**2

//---------------------------------------------------

/*
Simple Fun #1: Seats in Theater
*/

export function seatsInTheater(nCols: number, nRows: number, col: number, row: number) {
  return (nCols - col) * (nRows - row) + (nRows - row)
}

//---------------------------------------------------

/*
Find Maximum and Minimum Values of a List
*/

export const min = (list: number[]): number => {
  return Math.min(...list)
};

export const max = (list: number[]): number => {
  return Math.max(...list)
};

//---------------------------------------------------

/*
altERnaTIng cAsE <=> ALTerNAtiNG CaSe
*/

export function toAlternatingCase(s: string): string {
  return Array.from(s).map(i => i == i.toUpperCase() ? i.toLowerCase() : i.toUpperCase()  ).join("");
}

//---------------------------------------------------

/*
Convert a String to a Number!
*/

export function stringToNumber(str: string): number {
  return Number(str)
}

//---------------------------------------------------

/*
String Templates - Bug Fixing #5
*/

export function buildString(... template:string[]):string {
  return `I like ${template.join(', ')}!`
}

//---------------------------------------------------

/*
Calculate BMI
*/

export function bmi(weight: number, height: number): string {
  return weight / height**2 <= 18.5 ? "Underweight" : weight / height**2 <= 25.0 ? "Normal" : weight / height**2 <= 30.0 ?  "Overweight" : "Obese"  
}

//---------------------------------------------------

/*
Basic variable assignment
*/

var a = "code";
var b = "wa.rs";
export var name = a + b;

//---------------------------------------------------

/*
Grasshopper - Basic Function Fixer
*/

export const addFive = (num : number) : number => {
  return num  + 5;
}

//---------------------------------------------------

/*
Keep up the hoop
*/

export function hoopCount(n: number): string {
  return n >= 10 ? "Great, now move on to tricks" : "Keep at it until you get it"
}

//---------------------------------------------------

/*
Opposites Attract
*/

export function lovefunc(flower1: number, flower2: number): boolean {
    return (flower1 + flower2) % 2 == 1 ? true : false 
}

//---------------------------------------------------

/*
Remove First and Last Character
*/

export function removeChar(str: string): string {
  return str.slice(1, str.length - 1)
}


//---------------------------------------------------

/*
Abbreviate a Two Word Name
*/

export function abbrevName(name: string): string {
    return name.split(" ").map(i => i.slice(0,1).toUpperCase() ).join(".") ;
}


//---------------------------------------------------

/*
My head is at the wrong end!
*/

export function fixTheMeerkat(arr: string[]): string[] {
  return [arr[2], arr[1], arr[0]]
}


//---------------------------------------------------

/*
Will you make it?
*/

export const zeroFuel = (distance: number, mpg: number, fuelLeft: number): boolean => {
  return fuelLeft * mpg >= distance ? true : false 
};


//---------------------------------------------------

/*
Are You Playing Banjo?
*/

export function areYouPlayingBanjo(name: string): string {
  return name[0] == "R" || name[0] == "r" ? name + " plays banjo" : name + " does not play banjo"
}


//---------------------------------------------------









//7 kyu ============================================

/*
Reverse words
*/

export function reverseWords(str: string): string {
  return str.split(" ").map(i => i.split("").reverse().join("") ).join(" ");
}

//---------------------------------------------------




