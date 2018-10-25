import UIKit
import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
}


class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var currentNode = head
        var array = [ListNode?]()
        
        while currentNode != nil {
            array.append(currentNode)
            
            currentNode = currentNode?.next
        }
        
        let delNode = array[array.count - n]
        let idx = array.count - n
        if idx != 0 {
            let someNode = array[idx-1]
            someNode?.next = delNode?.next
            delNode?.next = nil
        } else {
            return array.count > 1 ? array[1] : nil
        }
        
        return array[0]
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let s = Solution()
        
        let v1 = ListNode(1)
//        let v2 = ListNode(2)
//        let v3 = ListNode(3)
//        let v4 = ListNode(4)
//        let v5 = ListNode(5)
        
//        v1.next = v2
//        v2.next = v3
//        v3.next = v4
//        v4.next = v5
        
        s.removeNthFromEnd(v1, 1)
        
    }


}