class Solution {
  List<int>findDisappearedNumbers(List<int> nums) {
    final Set<int> numsSet = nums.toSet();
    List<int> ans = [];
    for(int i=1;i<=nums.length;i++){
        if(!numsSet.contains(i)){
            ans.add(i);
        }
    }

    return ans;
  }
}