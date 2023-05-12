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

/*
Alan Partridge II - Apple Turnover
*/

export function apple(x: number | string): string {
    if (+x * +x > 1000) {
    return "It's hotter than the sun!!";
  } else {
    return "Help yourself to a honeycomb Yorkie for the glovebox.";
  }
}


//---------------------------------------------------

/*
Basic Mathematical Operations
*/

export function basicOp(operation: string, value1: number, value2: number): number {
  let sum = 0
  switch (operation) {
      case "+" : {sum = value1 + value2};break; 
      case "-" : {sum = value1 - value2};break; 
      case "*" : {sum = value1 * value2};break; 
      case "/" : {sum = value1 / value2};break; 
  }
  return sum
}


//---------------------------------------------------

/*
Count Odd Numbers below n
*/

export function oddCount(n: number){
  return Math.floor(n / 2)
}

//---------------------------------------------------

/*
MakeUpperCase
*/

export function makeUpperCase(str: string): string{
  return str.toUpperCase();
}

//---------------------------------------------------

/*
Return to Sanity
*/

export function mystery(): object {
  return {sanity: 'Hello'};
}

//---------------------------------------------------

/*
Find Multiples of a Number
*/

export function findMultiples(integer: number, limit: number): number[] {
  return [...Array(limit + 1).keys()].filter(i => i % integer == 0).slice(1);
}

//---------------------------------------------------

/*
Parse nice int from char problem
*/

export function get_age(age: string): number {
   return +age.split("").slice(0,1);
}

//---------------------------------------------------

/*
Safen User Input Part I - htmlspecialchars
*/

export function htmlspecialchars(formData: string): string {
return formData
    .replace(/&/g, '&amp;')
    .replace(/"/g, '&quot;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;');
}

//---------------------------------------------------

/*
Calculate average
*/

export function findAverage(array: number[]): number {
  return array.length == 0 ? 0 : array.reduce((acc, i) => acc + i, 0) / array.length;
}

//---------------------------------------------------

/*
Will there be enough space?
*/

export function enough(cap: number, on: number, wait: number): number {
  return cap - on - wait < 0 ? Math.abs(cap - on - wait) : 0
}

//---------------------------------------------------

/*
Return Negative
*/

export const makeNegative = (num: number): number => {
  return Math.sign(num) == 1 ? num * -1 : num
};

//---------------------------------------------------

/*
Thinkful - Logic Drills: Traffic light
*/

export function updateLight(current: string): string {
  if (current == "green" ){
    return "yellow"
  } else if (current == "yellow"){
    return "red"
  } else {
    return "green"
  }
}

//---------------------------------------------------

/*
How good are you really?
*/

export function twiceAsOld(dadYearsOld: number, sonYearsOld: number): number {
 return Math.abs(dadYearsOld - (sonYearsOld * 2))
}

//---------------------------------------------------

/*
Twice as old
*/

export function betterThanAverage(classPoints: number[], yourPoints: number) : boolean {
  return  classPoints.reduce((a,b) => a + b, 0) / classPoints.length < yourPoints ?  true : false;
}

//---------------------------------------------------

/*
Beginner Series #4 Cockroach
*/

export function cockroachSpeed(s: number): number{
  return s == 0 ? 0 : Math.floor(s * 1000 / 3600 * 100);
}

//---------------------------------------------------

/*
I love you, a little , a lot, passionately ... not at all
*/

export function howMuchILoveYou(petals: number): string{
 let phrases = [
    "not at all",
    "I love you",
    "a little",
    "a lot",
    "passionately",
    "madly",
]
  return phrases[petals % 6]
}

//---------------------------------------------------

/*
Is it even?
*/

export const testEven = (n : number) : boolean => {
  return n % 2 == 0 ? true : false
}

//---------------------------------------------------

/*
Remove String Spaces
*/

export function noSpace(x:string):string {
  return x.replace(/\s/g, '')
}

//---------------------------------------------------

/*
Grasshopper - If/else syntax debug
*/

export function checkAlive(health: number): boolean {
  let  result: boolean
    if ( health <= 0) {
        result = false;
    } else {
        result = true;
    }
  return result
}

//---------------------------------------------------

/*
Counting sheep...
*/

export function countSheeps(arrayOfSheep: (boolean | undefined | null)[]) {
  return arrayOfSheep.filter(i => i == true).length
}

//---------------------------------------------------

/*
All Star Code Challenge #18
*/

export function strCount(str: string, letter: string): number {
  return str == "" ? 0 : Array.from(str).filter(i => i == letter).length
}

//---------------------------------------------------

/*
Grasshopper - Debug
*/

export function weatherInfo(temp: number): string {
  const c : number = (temp - 32) * (5/9)
  if (c < 0)
    return (Math.round(c*1e5)/1e5 + " is freezing temperature")
  else
    return (Math.round(c*1e5)/1e5 + " is above freezing temperature")
}

//---------------------------------------------------

/*
Type of sum
*/

export function typeOfSum(a:any, b:any):string {
  let type = a + b
  return `${typeof type}` 
}

//---------------------------------------------------

/*
Remove duplicates from list
*/

export const distinct = (a: number[]): number[] => {
  return [...new Set(a)]
}

//---------------------------------------------------

/*
N-th Power
*/

export function index(array: number[], n: number): number {
  return array.length <= n ? -1 : array[n]**n;
}

//---------------------------------------------------

/*
Exclusive "or" (xor) Logical Operator
*/

export const xor=(a:boolean, b:boolean):boolean => {
  let bool = true
  if (a === true && b === true) {
    bool = false
  } else if (a === true && b === false) {
    bool = true
  } else if (a === false && b === true) {
    bool = true
  } else if (a === false && b === false) {
    bool = false
  }
  return bool
}

//---------------------------------------------------

/*
Holiday VIII - Duty Free
*/

export function dutyFree(normPrice: number, discount: number, hol: number): number{
  return Math.floor(hol / (discount / 100 * normPrice) )
}

//---------------------------------------------------

/*
The Wide-Mouthed frog!
*/

export function mouthSize(animal: string): string {
  return animal.toLowerCase() == "alligator" ? "small" : "wide";
}

//---------------------------------------------------

/*
Grasshopper - Messi goals function
*/

export function goals (laLigaGoals:number, copaDelReyGoals:number, championsLeagueGoals:number): number {
  return laLigaGoals + copaDelReyGoals + championsLeagueGoals
}

//---------------------------------------------------

/*
Beginner Series #1 School Paperwork
*/

export function paperwork(n: number, m :number): number{
  return n < 0 || m < 0 ? 0 : n * m;
}

//---------------------------------------------------

/*
Array plus array
*/

export const arrayPlusArray = (arr1 : number[], arr2 : number[]) : number => {
  return arr1.reduce((a, b) => a+b,0) + arr2.reduce((a, b) => a+b,0); 
}

//---------------------------------------------------

/*
Do I get a bonus?
*/

export class Kata {
    public static bonusTime(salary:number, bonus:boolean):string {
      return bonus ? `£${salary * 10}` : `£${salary}`
    }
}

//---------------------------------------------------

/*
Find out whether the shape is a cube
*/

export function cubeChecker(volume: number, side: number): boolean{
  let w = volume / (side * side)
  let h = volume / (side * side)
  return (w === side && h === side) ? true : false;
}

//---------------------------------------------------

/*
FIXME: Replace all dots
*/

export function replaceDots(str: string): string {
  return str.replaceAll(".", '-');
}

//---------------------------------------------------

/*
Jenny's secret message
*/

export function greet(name:string): string {
  if(name === "Johnny") {
    return "Hello, my love!";
    }
  return "Hello, " + name + "!";
}

//---------------------------------------------------

/*
Well of Ideas - Easy Version
*/

export function well(x: string[]): string{
  return x.filter(i => i == "good").length == 0  ? 'Fail!' :  x.filter(i => i == "good").length < 3  ?'Publish!' :  'I smell a series!'    
}

//---------------------------------------------------

/*
Capitalization and Mutability
*/

export function capitalizeWord(word: string): string {
  return word.slice(0,1).toUpperCase() + word.slice(1, word.length)
}

//---------------------------------------------------

/*
Find the position!
*/

export function position(alphabet: string): string {
  const alphabetPosition: Record<string, number> = {
    "a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": 6, "g": 7, "h": 8, "i": 9, "j": 10,
    "k": 11, "l": 12, "m": 13, "n": 14, "o": 15, "p": 16, "q": 17, "r": 18, "s": 19, "t": 20,
    "u": 21, "v": 22, "w": 23, "x": 24, "y": 25, "z": 26
  };

  return `Position of alphabet: ${alphabetPosition[alphabet]}`;
}

//---------------------------------------------------

/*
Rock Paper Scissors!
*/

export function rps(p1: string, p2: string): string{
  if (p1 == "scissors" && p2 == "paper" || p1 == "rock" && p2 == "scissors" || p1 == "paper" && p2 == "rock") {
    return "Player 1 won!"
  } else if (p1 === p2 ) {
    return 'Draw!'
  }
  return "Player 2 won!"
}

//---------------------------------------------------

/*
L1: Set Alarm
*/

export function setAlarm(employed: boolean, vacation: boolean) {
  return employed == true && vacation == false ? true : false 
}

//---------------------------------------------------

/*
Correct the mistakes of the character recognition software
*/

export function correct(s: string): string{
 return s.replaceAll("0", 'O').replaceAll("5", 'S').replaceAll("1", 'I')
}

//---------------------------------------------------

/*
USD => CNY
*/

export function usdcny(usd: number): string {
  return `${(usd * 6.75).toFixed(2)} Chinese Yuan`;
}

//---------------------------------------------------

/*
Sentence Smash
*/

export function smash (words: string[]): string {
   return  words.join(" ")
};

//---------------------------------------------------

/*
Hello, Name or World!
*/

export function hello(name = ''): string {
  return name == '' ? "Hello, World!" : `Hello, ${name.slice(0,1).toUpperCase() + name.slice(1).toLowerCase()}!`;
}

//---------------------------------------------------

/*
For Twins: 2. Math operations
*/

export const iceBrickVolume = (radius: number, bottleLength: number, rimLength: number): number => {
   const sideLength = Math.sqrt(2) * radius;
  const height = bottleLength - rimLength;
  return Math.floor(sideLength * sideLength * height);
}

//---------------------------------------------------

/*
BASIC: Making Six Toast.
*/

export function sixToast(num:number):number {
  return num <= 3 ? num  : num <= 5 ? num - 1 : num - 6
}

//---------------------------------------------------

/*
What's the real floor?
*/

export function getRealFloor(n: number): number {
  switch (true) {
      case n < 1: {return n}
      case n == 1: {return 0}
      case n == 13: {return 14}
      case n < 14: {return n - 1}
       default: {return n - 2}
  }
}

//---------------------------------------------------

/*
Training JS #29: methods of arrayObject---concat() and join()
*/

export function bigToSmall(arr: number[][]): string {  
  const flatArr = arr.flat(); 
  const sortedArr = flatArr.sort((a, b) => b - a); 
  const result = sortedArr.join(">"); 
  return result;
}

//---------------------------------------------------

/*
Volume of a Cuboid
*/

export function getVolumeOfCuboid(length: number, width:number, height:number): number {
  return length * width * height;
}

//---------------------------------------------------

/*
The Feast of Many Beasts
*/

export function feast(beast:string, dish:string):boolean {
  let beasts = beast[0] + beast[beast.length - 1]
  let dishs = dish[0] + dish[dish.length - 1]
  if (beasts === dishs) {
    return true
  }
  return false
}

//---------------------------------------------------

/*
Total amount of points
*/

export function points(games : string[]): number {
  let count = 0;
  let nums = games.map(val => val.split(":").map(v => parseInt(v)));
  for (let i = 0; i < nums.length; i++) {
    if (nums[i][0] > nums[i][1]) {
      count += 3;
    } else if (nums[i][0] === nums[i][1]) {
      count += 1;
    }
  }
  return count;
}

//---------------------------------------------------

/*
Holiday VI - Shark Pontoon
*/

export function shark(pontoonDistance: number, sharkDistance: number, youSpeed: number, sharkSpeed: number, dolphin: boolean): string {
  let result = "Alive!"
  let speed = dolphin ? sharkSpeed / 2 : sharkSpeed
  if ((sharkDistance / speed) > (pontoonDistance / youSpeed)) {
    result = "Alive!"
  } else {
    result = "Shark Bait!"
  }
  return result;
}

//---------------------------------------------------

/*

Multiple of index
*/

export function multipleOfIndex(array: number[]):number[] {
  return array.filter((val, index) => val % index === 0)
}

//---------------------------------------------------
    
/*
DNA to RNA Conversion
*/

export function DNAtoRNA(dna: string): string {
  return dna.replaceAll('T', 'U');
}

//---------------------------------------------------
       
/*
Is integer safe to use?
*/

export function SafeInteger(n: number): boolean {
  return n > 9007199254740990 ? false : true 
}

//--------------------------------------------------- 
         
/*
Parse float
*/

export function parseF(s:string): number|null {
  return !isNaN(Number(s)) ? Number(s) : null
}

//---------------------------------------------------   
             
/*
Find the smallest integer in the array
*/

export function findSmallestInt(args: number[]): number {
  return Math.min(...args);
}

//---------------------------------------------------   
                 
/*
Exclamation marks series #1: Remove an exclamation mark from the end of string
*/

export function remove(s: string): string {
  var arr = Array.from(s)
  
  if (s[s.length - 1] === "!") {
    return s.slice(0, s.length - 1)
  }
  return s
}

//---------------------------------------------------   
                   
/*
Student's Final Grade
*/

export function finalGrade (exam: number, projects: number): number {
   if (exam > 90 || projects > 10) {
    return 100;
  } else if (exam > 75 && projects >= 5) {
    return 90;
  } else if (exam > 50 && projects >= 2) {
    return 75;
  } else {
    return 0;
  }
}

//---------------------------------------------------   
                       
/*
What is between?
*/

export function between(a: number, b: number): number[] {
  let count = a
  let arr = []
  
  while (count <= b) {
    arr.push(count)
    count ++
  }
  
  return arr;
}

//---------------------------------------------------  
                           
/*
Find numbers which are divisible by given number
*/

export function divisibleBy(numbers: number[], divisor: number): number[]{
  return numbers.filter(val => val % divisor == 0)
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

/*
Factorial
*/

export function factorial(n: number):number {
  return Array.from({length: n}, (_, i) => i + 1).reduce((a, b) => a * b, 1)
}

//---------------------------------------------------

/*
Convert to Binary
*/

export function toBinary(n:number):number {
  return +n.toString(2)
}

//---------------------------------------------------


