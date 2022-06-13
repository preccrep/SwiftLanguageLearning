//常量的值一旦设置好便不能再被更改，然而变量可以在将来被设置为不同的值。
var a = 10
var b = 5
b = a

let (x, y) = (1, 2)

"hello, " + "world"

print(-9 % 4)
//当b为负数时它的正负号被忽略掉了。这意味着 a % b 与 a % -b 能够获得相同的答案。
print("result is:", 9 % -4)

b = -3
//一元减号运算符（ - ）直接在要进行操作的值前边放置，不加任何空格。
var c = -b

//尽管一元加号运算符实际上什么也不做，你还是可以对正数使用它来让你的代码对一元减号运算符来说显得更加对称。
c = +b

a += 4

//Swift 同时也提供两个等价运算符（ ===  和 !== ），你可以使用它们来判断两个对象的引用是否相同


var name = "wpi"
if name == "world" {
    print("hello world")
} else {
    print("hello \(name)")
}

print(-9 % -4)

(1, "zebra") < (2, "apple")   // true because 1 is less than 2
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"

let defaultColorName = "red"
var userDefinedColorName: String? // defaults to nil
var colorNameToUse = userDefinedColorName ?? defaultColorName

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName

for index in 1...5 {
    print("index is \(index)")
}

var names = ["Anna", "Alex", "Brian", "Jack"]
var count = names.count
for i in 0..<count {
    print("index is \(i)")
}

for name in names[2...] {
    print(name)
}

for name in names[1...3] {
    print(name)
}

for name in names[..<2] {
    print(name)
}

let range = ...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // true


let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}

//let quotation = """
//I said, "aaaaa",
//so emmm
//
//you know.
//"""
//print(quotation)

let quotation = """
I said, "aaaaa",\
so emmm \
\
you know.
"""
print(quotation)

let lineBreaks = """
 
This string starts with a line break.
It also ends with a line break.
 
"""
print(lineBreaks)

func generateQuotation() -> String {
    let quotation = """
        The White Rabbit put on his spectacles.  "Where shall I begin,
        please your Majesty?" he asked.
        
        "Begin at the beginning," the King said gravely, "and go on
        till you come to the end; then stop."
        """
    return quotation
}
print(generateQuotation())

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}" // $, Unicode scalar U+0024
let blackHeart = "\u{2665}" // ♥, Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖️, Unicode scalar U+1F496

let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
and \n
"""#
print(threeMoreDoubleQuotationMarks)

var str1 = ""
var str2 = String()

if str1.isEmpty {
    print("Nothing to see here")
}

for character in "Dog!🐶️" {
    print(character)
}

let ch = "p"
let ch1: Character = "p"
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱️"]
let catString = String(catCharacters)
print(catString)

print(str1.startIndex)
print(str1.endIndex)
str1.append(contentsOf: "preccrep")
print(str1.count)
print(str1.startIndex)
print(str1.endIndex)
print(str1[str1.index(str1.startIndex, offsetBy: 3)])
print(str1[str1.index(before: str1.endIndex)])

for index in str1.indices {
    print("\(index)", terminator: " ")
}

for index in str1.indices {
    print("\(str1[index])", terminator: "!")
}

var threeDoubles = Array(repeating: 8, count: 3)
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]
print(type(of: threeDoubles))

print(threeDoubles.remove(at: threeDoubles.endIndex - 1))
print(threeDoubles.count)
print(threeDoubles.removeLast())
print(threeDoubles.count)
print(threeDoubles.insert(89, at: threeDoubles.startIndex + 1))
print(threeDoubles.count)
print(threeDoubles)

let myList: [String] = ["Milk", "Apple", "Banana", "Pear"]

for (index, value) in myList.enumerated() {
    print("\(index) is \(value)")
}

var letters = Set<Character>()
letters.insert("a")
print(letters.count)
letters = []
print(letters.count)

var genres: Set<String> = ["Rock", "Classical", "Hip hop"]

var nums: Set = [1,2,3,1,32,1,2,3321,23,1,6,4,3]
print("version 1:")
print(nums)
print("version 2:")
print(nums.sorted())
print("version 3:")
print(nums.sorted(by: { (x: Int, y: Int) -> Bool in
    return x > y
}))

let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("Not on an axis")
}
// Prints "On an axis, 9 from the origin"

func arithmaticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmaticMean(1, 2, 3, 4)


func testFunc1(param1: Int, param2: String) -> Void {
    //
}
func testFunc2(_ param1: Int, param2: String) -> Void {
    //
}
func testFunc3(_ param1: Int, label2 param2: String) -> Void {
    //
}
func testFunc4(label1 param1: Int, label2 param2: String) -> Void {
    //
}
func testFunc5(_ param1: Int, _ param2: String) -> Void {
    //
}
func testFunc6(_ param1: Int..., label2 param2: String) -> Void {
    //
}
//func testFunc7(_ param1: Int..., _ param2: String) -> Void {
//    //
//}
func testFunc8(_ param1: Int..., param2: String) -> Void {
    //
}

testFunc1(param1: 12, param2: "aaa")
testFunc2(12, param2: "aaa")
testFunc3(12, label2: "aaa")
testFunc4(label1: 12, label2: "aaa")
testFunc5(12, "aaa")
testFunc6(1,2,3,4,5, label2: "aaa")
testFunc8(1,2,3,4,5, param2: "aaa")


func swap(_ a: inout Int, _ b: inout Int) {
    let tmp = a
    a = b
    b = tmp
}
var a1 = 13, b1 = 9
swap(&a1, &b1)
print(a1, b1)

var aliasSwap: (inout Int, inout Int) -> Void = swap
print(a1, b1)
aliasSwap(&a1, &b1)
print(a1, b1)

func inBuilt(_ a: Int, _ b: String) -> (Int) -> Int {
    func ans(input: Int) -> Int {
        return input + 1
    }
    func inStr(_ s: String) {
        print(s)
    }
    inStr(b)
    return ans
}
var autoAns = inBuilt(12, "aaa")
print(autoAns(12))
