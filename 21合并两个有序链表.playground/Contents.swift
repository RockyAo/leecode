import UIKit

var str = "Hello, playground"
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() {
        self.val = 0
        self.next = nil
    }
    public init(_ val: Int) {
        self.val = val
        self.next = nil
        
    }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
        
    }
}


func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    let list = ListNode()
    
    guard let current1 = l1 else {
        return l2
    }
    
    guard let current2 = l2 else {
        return l1
    }
    
    var tail: ListNode?
    
}
