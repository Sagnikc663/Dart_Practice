class Solution {
  int majorityElement(List<int> nums) {
    //Boyer-Moore Voting Algorithm
    int ans = 0;
    int vote = 0;
    int candidate = -1;
    for(int i=0;i<nums.length;i++){
        if(vote == 0){
            candidate = nums[i];
            vote = 1;
        }else if(candidate == nums[i]){
            vote ++;
        }else{
            vote--;
        }
    }
    int count = 0;
    for(int i=0;i<nums.length;i++){
        if(candidate == nums[i]){
            count++;
        }
    }

    if(count >= nums.length/2){
        return candidate;
    }
    return -1;

  }
}