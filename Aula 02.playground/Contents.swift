import UIKit

struct Stack<Element: Equatable> :Equatable{
    var internalStorage: [Element] = []
    
    init(){
    }
    
    init(_ elements: [Element]) {
        self.internalStorage = elements
    }
    
    var isEmpty: Bool{
        return peek() == nil
    }
    
    mutating func push(_ element: Element){
        self.internalStorage.append(element)
    }
    
    @discardableResult
    mutating func pop() -> Element?{
        return self.internalStorage.popLast()
    }
    
    func peek() -> Element?{
        return self.internalStorage.last
    }
}

extension Stack: CustomStringConvertible{
    var description: String{
        return internalStorage.map{"\($0)"}.joined(separator: ", ")
    }
}


var integerStack = Stack<Int>()
integerStack.push(1)
integerStack.push(2)
integerStack.push(3)
integerStack.isEmpty
integerStack.pop()
integerStack.pop()
integerStack.pop()
integerStack.isEmpty
