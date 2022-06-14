import Foundation
func cmp(_ a: Int, _ b: Int) -> Bool {
    return a > b
}
var arr: [Int] = [1,4,9,2,3,6,7]
arr = arr.sorted(by: cmp)
print(arr)

struct Node {
    var id: Int
    var name: String
    func toPrint() {
        print("\(id) --> \(name)")
    }
}
var arr1: [Node] = []
arr1.append(Node(id: 11, name: "aaa"))
arr1.append(Node(id: 2, name: "aaa"))
arr1.append(Node(id: 5, name: "bbb"))
arr1.append(Node(id: 5, name: "bab"))
arr1.append(Node(id: 7, name: "aaa"))
print(arr1.count)
var arr2 = arr1.sorted(by: { (x: Node, y: Node) -> Bool in
    if x.id != y.id {
        return x.id < y.id
    } else {
        return x.name < y.name
    }
})
for itm in arr2 {
    itm.toPrint()
}


//Trailing Closure
func travel(action: () -> Void) {
    print("I'm ready to go.")
    action()
    print("I'm arrived!")
}
travel {
    print("I'm driving in my car.")
}
travel(action: {
    print("I'm taking the bus.")
})


func testFunc1() -> Int {
    let a: Int = 8
    func testInFunc() -> Int {
        let b: Int = a + c
        return b
    }
    let c: Int = 9
    return testInFunc()
}
print(testFunc1())


var myArray: [(Int) -> Int] = []
func testFunc2(_ a: @escaping (Int) -> Int) {
    myArray.append(a)
}
testFunc2 { a in a + 1 }
print(myArray[0](2))


enum Letters: CaseIterable {
    case alpha, beta, gamma
}
let latinLetter = Letters.beta
switch latinLetter {
case .alpha:
    print("qqq")
    print("aaaa")
case .beta:
    print("aaaaaaaa")
    print("ddddd")
case .gamma:
    print("llllll")
}
let latinSet = Letters.allCases
print(latinSet.count)
for l in latinSet {
    print(l)
}


//struct Node1 {
//    var a: Int = 9
//    var name: String?
//}
//let n1 = Node1(a: 12, name: "prec")
//let n2 = Node1(a: 12, name: "prec")
//let n3 = Node1(a: 14, name: "prec")
//let n4 = Node1(a: 12, name: "precc")


//class MyClass {
//    var a: Int = 9
//    var name: String?
//    init(a: Int, b: String) {
//        self.a = a;
//        self.name = b
//    }
//}
//let c1 = MyClass(a: 12, b: "aaa")
//let c2 = MyClass(a: 12, b: "aaa")
//print(c1 === c2)
//var ptr = c1
//print(ptr === c1)
//ptr = c2
//print(ptr === c1)
//print(ptr === c2)


