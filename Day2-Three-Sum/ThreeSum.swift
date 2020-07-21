
//ThreeSum
//
//Given an array of integers, find all subsets of the array with 3 values where the 3 values sum up to a target number.
//
//**Note**: The solution subsets must not contain duplicate triplets.
//
//For example, given the array [-1, 0, 1, 2, -1, -4], and the target **0**:
//The solution set is: [[-1, 0, 1], [-1, -1, 2]] // The two **-1** values in the array are considered to be distinct
//
//There are 2 key procedures in solving this algorithm. Sorting the array, and avoiding duplicates.

func threeSum(_ nums: [Int], target: Int) -> Set<[Int]> {
    let sortedNums = nums.sorted()
    var dataReturn: Set<[Int]> = []
    for i in 0...sortedNums.count - 3 {
        var leftIndex = i + 1
        var rightIndex = sortedNums.count - 1
        while leftIndex < rightIndex {
            let sum = sortedNums[i] + sortedNums[leftIndex] + sortedNums[rightIndex]
            if sum == target {
                dataReturn.insert([sortedNums[i], sortedNums[leftIndex], sortedNums[rightIndex]])
                rightIndex -= 1
                leftIndex += 1
            } else if sum > target {
                rightIndex -= 1
            } else {
                leftIndex += 1
            }
        }
    }
    return dataReturn
}
