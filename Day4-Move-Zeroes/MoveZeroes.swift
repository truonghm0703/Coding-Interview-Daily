//Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
//
//Example:
//
//Input: [0,1,0,3,12]
//Output: [1,3,12,0,0]
//Note:
//
//You must do this in-place without making a copy of the array.
//Minimize the total number of operations.

func moveZeroes(_ nums: inout [Int]) {
    var leftIndex = 0
    var rightIndex = 0
    while  rightIndex < nums.count && leftIndex < nums.count {
        if nums[leftIndex] == 0 && nums[rightIndex] != 0 {
            nums[leftIndex] = nums[rightIndex]
            nums[rightIndex] = 0
            leftIndex += 1
            rightIndex += 1
        } else {
            if nums[leftIndex] != 0 {
                leftIndex += 1
                rightIndex = leftIndex + 1
            } else {
                if nums[rightIndex] == 0 {
                    rightIndex += 1
                }
            }
        }
    }
}
