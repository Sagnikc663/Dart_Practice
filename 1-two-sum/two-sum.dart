class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int,int> map = {};

    for(int i=0;i<nums.length;i++){
        int key = target - nums[i];
        if(map.containsKey(key)){
            return [map[key] ?? 0,i];
        }

        map[nums[i]] = i;
    }

    return [];
  }
}