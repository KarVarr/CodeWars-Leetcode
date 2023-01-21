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




//7 kyu

/*
Reverse words
*/

export function reverseWords(str: string): string {
  return str.split(" ").map(i => i.split("").reverse().join("") ).join(" ");
}

//---------------------------------------------------
