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



//7 kyu

/*
Reverse words
*/

export function reverseWords(str: string): string {
  return str.split(" ").map(i => i.split("").reverse().join("") ).join(" ");
}

//---------------------------------------------------




