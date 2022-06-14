//
//  Palindrome numbers.swift
//  
//
//  Created by Алексей Чигарских on 14.06.2022.
//  link: https://leetcode.com/problems/palindrome-number/

//Palindrome numbers
// input: 14541 output: - true
// input: 14531 output: - false
class Solution {
    
    func isPalindromeFirstSolution(_ x: Int) -> Bool {
        let str = Array(String(x))
        var start = 0
        var end = str.count - 1
        while start < end {
            if str[start] == str[end] {
                start += 1
                end -= 1
            } else {
                return false
            }
        }
        return true
}
    
    
    func isPalindromeSecondSolution(_ x: Int) -> Bool {
        //Convert to array
        let normal = Array(String(x))
        let reversed = Array(String(x).reversed()) //Reverse array
        
        //Make two slices
        let leftSlice = normal.prefix(normal.count/2)
        let rightSlice = reversed.prefix(reversed.count/2)
        
        //Compare
        if leftSlice == rightSlice {
            return true
        } else {
            return false
        }
    }
}
