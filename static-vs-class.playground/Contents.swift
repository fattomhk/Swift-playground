//: Playground - noun: a place where people can play

import UIKit

class A {
    class func classFunction() {
    }
    static func staticFunction() {
    }
    class func classFunctionToBeMakeFinalInImmediateSubclass() {
    }
}

class B: A {
    override class func classFunction(){
        
    }
    
    //Compile Error. Class method overrides a 'final' class method
    override static func staticFunction() {
        
    }
    
    override final class func classFunctionToBeMakeFinalInImmediateSubclass() {
    }

}

class C: B{
    override class func classFunction() {
    }
    
    //Compile Error. Class method overrides a 'final' class method
    override static func classFunctionToBeMakeFinalInImmediateSubclass(){
        
    }
}

struct sa {
    static func staticFunction() {}
    //Compile Error. Class methods are only allowed within classes
    class func classFunction() {}
}

enum enumExample {
    static var staticVar = "123"
    //Compile Error. Class methods are only allowed within classes
    class var classVar = "456"
}



