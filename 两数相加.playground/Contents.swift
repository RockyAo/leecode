import UIKit


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class Solution {
//    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//        var ll1 = l1
//        var ll2 = l2
//        var node = ListNode(0)
//
//        let nodes = node
//        var flag = 0
//
//        while ll1 != nil || ll2 != nil || flag == 1 {
//            let num1 = ll1?.val ?? 0
//            let num2 = ll2?.val ?? 0
//
//            var sum = num1 + num2 + flag
//
//            if sum > 9 {
//                sum = sum % 10
//                flag = 1
//            } else {
//                flag = 0
//            }
//
//            node.next = ListNode(sum)
//            node = node.next!
//            ll1 = ll1?.next
//            ll2 = ll2?.next
//        }
//
//        return nodes.next
//    }
}


func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {

    if l1 == nil { return l2 }
    if l2 == nil { return l1 }

    var l1 = l1
    var l2 = l2

    let root: ListNode = ListNode(0)
    var cursor: ListNode? = root
    var d: Int = 0 // 满十往前进一标记

    while l1 != nil || l2 != nil {

        let sum = (l1?.val ?? 0) + (l2?.val ?? 0) + d
        // 是否满十进一
        d = sum / 10

        cursor?.next = ListNode(sum % 10)
        cursor = cursor?.next

        l1 = l1?.next
        l2 = l2?.next
    }

    // 两个链表最高位相加后大于9 需要进一
    if d != 0 {
        cursor?.next = ListNode(1)
    }

    return root.next
}
