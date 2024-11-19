class Solution {
  TreeNode? searchBST(TreeNode? root, int val) {
    if (val < root.val){
        searchBST(root.left, val);
    } else if (val > root.val) {
        searchBST(root.right, val);
    } else {
        return root;
    }
  }
}
