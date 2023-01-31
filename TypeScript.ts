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






//7 kyu

/*
Reverse words
*/

export function reverseWords(str: string): string {
  return str.split(" ").map(i => i.split("").reverse().join("") ).join(" ");
}

//---------------------------------------------------




