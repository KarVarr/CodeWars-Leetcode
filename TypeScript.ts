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



//7 kyu

/*
Reverse words
*/

export function reverseWords(str: string): string {
  return str.split(" ").map(i => i.split("").reverse().join("") ).join(" ");
}

//---------------------------------------------------




