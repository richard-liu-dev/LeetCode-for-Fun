import UIKit


class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var sum = 0
        var isBuy = false
        
        if prices.count < 2 {
            return 0
        }
        
        for i in 0..<prices.count - 1 {
            let n0 = prices[i]
            let n1 = prices[i+1]
            
            if !isBuy && n1 > n0 {
                isBuy = true
                sum = sum - n0
            }
            
            if isBuy {
                if n1 < n0 {
                    isBuy = false
                    sum = sum + n0
                } else if i == prices.count - 2 {
                    isBuy = false
                    sum = sum + n1
                }
            }
        }
        
        
        return sum
    }
}



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let s = Solution()
        
//        let result = s.maxProfit([7,1,5,3,6,4])
//        let result = s.maxProfit([1,2,3,4,5])
//        let result = s.maxProfit([1,4,2])
        let result = s.maxProfit([1,9,6,9,1,7,1,1,5,9,9,9])
        
        print("result: \(result)")
        
    }


}