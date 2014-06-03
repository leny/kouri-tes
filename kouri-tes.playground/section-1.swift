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



