class Solution {
  List<int> relativeSortArray(List<int> arr1, List<int> arr2) {
    List<int> result = [];
    List<int> end = [];
    for(final array in arr1){
        if(!arr2.contains(array)){
            end.add(array);
        }
    }

    end.sort();

    for(final array in arr2){
        for(final num in arr1){
         if(array == num){
            result.add(array);
            }
        }
      
    }

    return result + end;
  }
}