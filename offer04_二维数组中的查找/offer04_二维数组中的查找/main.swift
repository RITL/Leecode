//
//  main.swift
//  offer04_二维数组中的查找
//
//  Created by YueWen on 2021/12/28.
//

/*
 在一个 n * m 的二维数组中，每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。请完成一个高效的函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/er-wei-shu-zu-zhong-de-cha-zhao-lcof
 */

import Foundation

class Solution {
    //[[1],[2],[3],[4]]
    //二分查找
    func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
        //
        if (matrix.isEmpty || matrix.first!.isEmpty) {
            return false
        }
        
        var x = 0
        var y = matrix.count - 1
        //在左下角进行查找
        while(x < matrix.first!.count && y >= 0) {
            
            if(matrix[y][x] == target) {
                return true
            }
            //如果比targe小，横向+1
            if(matrix[y][x] < target) {
                x += 1
                continue
            }
            
            //如果比target大，纵向-1
            y -= 1
        }
        return false
    }
}

Solution().findNumberIn2DArray([[1],[2],[3],[4]], 5)

