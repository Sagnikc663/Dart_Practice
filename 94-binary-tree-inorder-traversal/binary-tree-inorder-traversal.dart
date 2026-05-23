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
  List<int> inorderTraversal(TreeNode? root) {
    if(root == null) return [];
    List<int> res = [];
    
    res.addAll(inorderTraversal(root?.left));

     res.add(root?.val ?? 0);
     res.addAll(inorderTraversal(root?.right));
    return res;
  }
}