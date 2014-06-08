// kouri tès - Simple Swift playground.

// --- Simple Values

// vars & constants

var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble:Double = 70
let explicitFloat:Float = 4

// strings

let label = "The width is "
let width = 94
let widthLabel = label + String( width )

let apples = 3
let oranges = 5
let appleSummary = "I have \( apples ) apples."
let fruitSummary = "I have \( apples + oranges ) pieces of fruit."
let myName = "Leny"
let myAge = 29.08
let greetings = "Hey, I'm \( myName ) and I am \( myAge ) ! (yes, it's a Floating age)"

// arrays & dictionnaries

var shoppingList = [ "catfish", "water", "tulips", "blue paint" ]
shoppingList[ 1 ] = "bottle of water"

var occupations = [
    "Kirk": "Captain",
    "Sulu" : "Pilot"
]

occupations[ "McCoy" ] = "Doctor"

let emptyArrayOfStrings = String[]() // or []
let emptyDictionnaryOfFloats = Dictionary<String, Float>() // or [:]

// --- Control Flow

// for in

let individualScores = [ 75, 43, 103, 87, 12 ]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

// optional-value variables

var optionalString:String? = "Hello"
optionalString = nil

var optionalName:String? = "Doctor"
// optionalName = nil
var greeting:String
if let name = optionalName {
    greeting = "Hello, \( name )"
} else {
    greeting = "Hello, world!"
}

// switch

let vegetable = "red pepper"
switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
    case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich."
    case let x where x.hasSuffix( "pepper" ):
        let vegetableComment = "Is it a spicy \( x ) ?"
    default:
        let vegetableComment = "Everything tastes good in soup."
}

// iterate over a dictionary

let interestingNumbers = [
    "Prime": [ 2, 3, 5, 7, 11, 13 ],
    "Fibonacci": [ 1, 1, 2, 3, 5, 8 ],
    "Square": [ 1, 4, 9, 16, 25 ]
]
var largest = 0
var largestKind = "none"
for ( kind, numbers ) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
largest
largestKind

// whiles

var n = 2
while n < 100 {
    n *= 2
}
n

var m = 2

do {
    m *= 2
} while m < 100
m

// ranges in for loops

var rangedNumberExclusive = 0
for i in 0..5 {
    rangedNumberExclusive += i
}
rangedNumberExclusive

var rangedNumberInclusive = 0
for i in 0...5 {
    rangedNumberInclusive += i
}
rangedNumberInclusive

// --- Functions and Closures

func greet( name:String, day:String ) -> String {
    return "Hello \( name ), today is \( day )."
}
greet( "Captain Kirk", "monday" )

// multiple returns

func getGasPrices() -> (Double, Double, Double) {
    return ( 3.59, 3.69, 3.79 );
}
getGasPrices()

// splats

func sumOf( numbers:Int... ) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf( 1, 2, 3, 4, 5 )

func avgOf( numbers:Int... ) -> Double {
    var sum:Double = 0
    let amount = Double( numbers.count )
    for number in numbers {
        sum += Double( number )
    }
    return sum / amount
}
avgOf( 1, 2, 3, 4, 5 )

// nested, and first-class typed functions

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

func makeIncrementer() -> ( Int -> Int ) {
    func addOne( number:Int ) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment( 7 )

func hasAnyMatches( list:Int[], condition:Int -> Bool ) -> Bool {
    for item in list {
        if condition( item ) {
            return true
        }
    }
    return false
}
func lessThanTen( number:Int ) -> Bool {
    return number < 10
}
var numbers = [ 20, 19, 7, 12 ]
hasAnyMatches( numbers, lessThanTen )

// closures

numbers.map( {
    ( number:Int ) -> Int in
        let result = 3 * number
        return result
} )

numbers.map( { number in 3 * number } )

sort( [ 1, 5, 3, 12, 2 ] ) { $0 > $1 }