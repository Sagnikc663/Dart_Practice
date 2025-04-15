class Solution {
  List<int> getRow(int rowIndex) {
     List<int> ans = [1];
    if(rowIndex == 0) return ans;
    for(int i=1;i<=rowIndex;i++){
        List<int> temp=[1];
        // print('ANS-$ans');
        for(int j=1;j<ans.length;j++){
            temp.add(ans[j] + ans[j-1]);
            // print('Temp-$temp');
        }
        temp.add(1);
        ans = temp;
    }
    return ans;
  }
}