import UIKit
import Foundation

/*
 TODO:
 
 1. Certificates
 2. MAC
 
 
 
 */


/*
 aababcbe
  
 k=2
 
 
 babcbe
 
 acbe
  
 */

func getString(str: String, k: Int) -> String? {
    
    guard !str.isEmpty else {
        print("String is empty")
        return nil
    }
    
    guard k > 0 else {
        print("K should be greater than 0")
        return nil
    }
    
    var charOccurance: [Character : Int] = [:] // serilize // protocol dic - custome
    var outString: String = str
    
    for char in str {
        
        if charOccurance.keys.contains(char) {
            charOccurance[char]! += 1
        } else {
            charOccurance[char] = 1
        }
    }
    print(charOccurance)
    
    
    for (key, value) in charOccurance {
        if value >= k {
            outString.removeAll { char in
                char == key
            }
//            charOccurance[key] = value - k
        }
    }
    
    print(charOccurance)
    
    return outString//String(charOccurance.keys)
}

if let string = getString(str: "aababcbe", k: 2) {
    print("Final String: \(string)")
}


/*
 let arr = ["3","a","b","2","~","@"]
  
 output = 3+2 = 5
  
 */

let arr = ["3","a","b","2","~","@"]

let intArray = arr.compactMap { Int($0) }
print(intArray)

let sum = intArray.reduce(0) { $0 + $1 }
print(sum)

/*
 Associated Type
 */

enum AssociatedType {
    case name(String)
}



/*
 Protocol
 
 @objc
 
 
 Associated Type?
 */

protocol Queue {
    func pop()
    func push()
}



protocol Vehicle {
    
    func startEngine()
    func typeOfVehicle()
    func optionalFunction()
}

extension Vehicle {
    func optionalFunction() {
        print("This is optional function")
    }
}

class Car: Vehicle {
    func startEngine() {
        print("Engine started")
    }
    
    func typeOfVehicle() {
        print("4 Wheel")
    }
    
}



/*
 
 // Trailing Closure
 
 Input: Name
 
 output: Hello Name
 */

func printName(name: String, completionHandler: (String) -> Void) {
    
    completionHandler("Hello \(name)")
}

printName(name: "Manish") { msg in
    print(msg)
}

//
//func demo(url: String,completionHandler: () -> Void) {
//    
//}
//
//demo
