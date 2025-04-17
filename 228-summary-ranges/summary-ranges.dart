class Solution {
  List<String> summaryRanges(List<int> nums) {
    if(nums.isEmpty) return [];
    if(nums.length==1) return ["${nums[0]}"];
    
    List<String> ans = [];
    int start = nums[0];

    for(int i=0;i<nums.length;i++){
        if(i == nums.length-1 || nums[i] + 1 != nums[i+1]){
            if(start == nums[i]){
            ans.add("$start");
            }
            else{
            ans.add("$start->${nums[i]}");
            }
            if(i != nums.length-1) start = nums[i+1];
        }
    }
    return ans;
  }
}