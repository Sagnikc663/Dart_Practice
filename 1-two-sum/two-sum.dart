class Solution {
  List<int> twoSum(List<int> nums, int target) {
    //BruteForce and Optimal
     List<int> ans= [];
    // for(int i=0;i<nums.length;i++){
    //     for(int j=i+1;j<nums.length;j++){
    //         if(nums[i] + nums[j] == target){
    //             ans.add(i);
    //             ans.add(j);        
    //             }
    //     }
    // }

   for(int i=0;i<nums.length;i++){
    final tElement = target - nums[i];
    final index = nums.indexOf(tElement,i+1);
    if(index != -1 && (nums[index] + nums[i] == target)){
       ans.add(i);
       ans.add(index);
    }
   }

    return ans;
  }
}