//link to the question: https://leetcode.com/problems/leaf-similar-trees/?envType=study-plan-v2&envId=leetcode-75
/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    List<int?> oneTree = [].add(leaves(root1));
    List<int?> twoTree = [].add(leaves(root2));
    print(oneTree);
    print(twoTree);
    oneTree==twoTree ? return false : return true;
  }
}

int? leaves(TreeNode? root){

    if (root == null) {return root;}
    
    bool left = (root.left == null);
    bool right = (root.right == null);

    if(left && right) {return root.val;}
    leaves(root.left);
    leaves(root.right);
}