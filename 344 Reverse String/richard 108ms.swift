class Solution {
    func reverseString(_ s: String) -> String {
        
        let strArray = Array(s)
        var retString = ""
        for i in (0..<s.count).reversed() {
            retString.append(strArray[i])
        }
        
        return retString
    }
}