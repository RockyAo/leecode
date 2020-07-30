import UIKit

//给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
//
//你可以假设每种输入只会对应一个答案。但是，数组中同一个元素不能使用两遍。
//
//
//
//示例:
//
//给定 nums = [2, 7, 11, 15], target = 9
//
//因为 nums[0] + nums[1] = 2 + 7 = 9
//所以返回 [0, 1]
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/two-sum
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。


///暴力循环
//时间复杂度：O(n^2)
//对于每个元素，我们试图通过遍历数组的其余部分来寻找它所对应的目标元素，这将耗费 O(n) 的时间。因此时间复杂度为 O(n^2)。
//
//空间复杂度：O(1)。

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
 
    for i in 0 ..< nums.count{
        for j in i + 1 ..< nums.count {
            if nums[j] == target - nums[i] {
                return [i, j]
            }
        }
    }
    
    return []
}

let result = twoSum([2, 7, 11, 15], 9)
