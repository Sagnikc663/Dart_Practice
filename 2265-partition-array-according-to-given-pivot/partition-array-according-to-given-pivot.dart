class Solution {
  List<int> pivotArray(List<int> nums, int pivot) {
    List<int> small = [];
    List<int> equal = [];
    List<int> larger = [];

    for(final i in nums){
        if(i<pivot){
            small.add(i);
        }else if(i == pivot){
            equal.add(i);
        }else{
            larger.add(i);
        }
    }

    return [...small,...equal,...larger];
  }
}