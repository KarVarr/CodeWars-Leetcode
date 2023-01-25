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






//7 kyu

/*
Reverse words
*/

export function reverseWords(str: string): string {
  return str.split(" ").map(i => i.split("").reverse().join("") ).join(" ");
}

//---------------------------------------------------




