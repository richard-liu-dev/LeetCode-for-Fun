import UIKit
import Foundation


public class TreeNode {
    public var val:   Int
    public var left:  TreeNode?
    public var right: TreeNode?
    
    public init(_ val: Int) {
        self.val   = val
        self.left  = nil
        self.right = nil
    }
}

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        
        guard let node = root else {
            return 0
        }
        
        let leftDepth  = self.maxDepth(node.left)
        let rightDepth = self.maxDepth(node.right)
        
        if leftDepth < rightDepth {
            return rightDepth + 1
        } else {
            return leftDepth + 1
        }
        
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let s = Solution()
        
        
        let root   = TreeNode(2)
        root.left  = TreeNode(1)
        root.right = TreeNode(3)
        
        root.left?.left  = TreeNode(0)
        root.left?.right = TreeNode(7)
        
        root.right?.left  = TreeNode(9)
        root.right?.right = TreeNode(1)
        
        print("\(s.maxDepth(root))")
    }


}