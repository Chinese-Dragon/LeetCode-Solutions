//
//  InvertBinaryTree.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/9.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


/*   The description of question
 
 Invert a binary tree.
 
 -------------------
 
      4
    /   \
   2     7
  / \   / \
 1   3 6   9
 
 to -----------------
 
      4
    /   \
   7     2
  / \   / \
 9   6 3   1
--------------------
 
 */

#import "InvertBinaryTree_226.h"

struct TreeNode {
    int val;
    struct TreeNode *left;
    struct TreeNode *right;
};

@implementation InvertBinaryTree_226

- (struct TreeNode *)invertTree:(struct TreeNode *)root {

    if (!root) {
        return nil;
    }
    struct TreeNode *temp = root->left;
    root->left = root->right;
    root->right = temp;
    
    [self invertTree:root->left];
    [self invertTree:root->right];
    return root;

}

@end
