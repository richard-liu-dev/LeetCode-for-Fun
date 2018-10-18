class Solution:
    def removeDuplicates(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """

        kill = []
        prevalue = None
        idx = 0
        for value in nums:
            if prevalue == None:
                prevalue = value
            elif prevalue == value:
                kill.append(idx)
            
            prevalue = value
            idx+=1

        for idx in reversed(kill):
            del nums[idx]

        print(nums)
        return len(nums)

def main():
    solution = Solution()
    num = solution.removeDuplicates([0,0,1,1,1,2,2,3,3,4])
    # num = solution.removeDuplicates([1,1,2])
    print('num is {}'.format(num))


if __name__ == '__main__':
    main()