class Solution {
  bool containsDuplicate(List<int> nums) {
    Map<int, int> map= {};


    bool ans = false;
    for(int i=0;i<nums.length;i++){
        if(map.containsKey(nums[i])){
            ans = true;
            map[nums[i]] = (map?[nums[i]] ?? 0) + 1;
            break;
        }else{
            map[nums[i]] = 0;
        }
    }

    return ans;
  }
}