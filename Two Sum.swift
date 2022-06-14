//
//  Two sum.swift
//  
//
//  Created by Алексей Чигарских on 14.06.2022.
// link : https://leetcode.com/problems/two-sum/

//Example
/*
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 */

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hash : [Int:Int] = [:]
        
        for (i,num) in nums.enumerated() {
            let desiredHashKey = target - num
            
            if let existingValue = hash[desiredHashKey] {
                return [existingValue, i]
            } else {
                hash[num] = i
            }
        }
    return []
}
}
