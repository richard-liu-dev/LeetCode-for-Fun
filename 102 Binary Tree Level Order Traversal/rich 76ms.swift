/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    
    var printStr: String
    var outArray: [Int]
    var retArray: [[Int]]
    
    init() {
        printStr = ""
        outArray = [Int]()
        retArray = [[Int]]()
    }
    
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        
        self.printLevelOrder(root)
        
        return self.retArray
    }
    
    func height(_ node: TreeNode?) -> Int {
        guard let _ = node else {
            return 0
        }
        
        let lheight = self.height(node!.left)
        let rheight = self.height(node!.right)
        
        if lheight > rheight {
            return lheight + 1
        } else {
            return rheight + 1
        }
    }
    
    func printLevelOrder(_ root: TreeNode?) -> Void {
        let h = self.height(root)
        
        for i in 1..<h+1 {
            self.printGivenLevel(root, i)
            print("\(self.printStr)")
            
            self.retArray.append(self.outArray)

            self.printStr = ""
            self.outArray.removeAll()
        }
    }
    
    func printGivenLevel(_ root: TreeNode?, _ level:Int) -> Void {
        
        guard let _ = root else {
            return
        }
        
        if level == 1 {
            self.printStr.append("(\(root!.val))")
            self.outArray.append(root!.val)
        } else if level > 1 {
            self.printGivenLevel(root?.left, level - 1)
            self.printStr.append(", ")
            self.printGivenLevel(root?.right, level - 1)
        }
    }
}