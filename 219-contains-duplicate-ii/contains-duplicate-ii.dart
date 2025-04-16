class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    ///Brute Force O(n^2)
    // for(int i=0;i<nums.length;i++){
    //     for(int j=i+1;j<nums.length;j++){
    //         if(nums[i] == nums[j] && (i-j).abs() <= k){
    //             return true;
    //             break;
    //         }
    //     }
    // }

    ///using map;

    Map<int, int> map = {};
    for(int i=0;i<nums.length;i++){
        if(map.containsKey(nums[i]) && (i-map[nums[i]]!).abs() <= k){
            return true;
        }
        map[nums[i]] = i;
    }
    return false;
  }
}