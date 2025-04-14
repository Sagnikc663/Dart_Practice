class Solution {
  List<List<int>> generate(int numRows) {
    List<List<int>> ans = [[1]];

    for(int i=1;i<numRows;i++){
        final temp = [0] + ans[i-1] + [0] ;
        print('Temp -- $temp');
        final List<int> row = [];
        for(int j=0;j<=i;j++){
            row.add(temp[j] + temp[j+1]);
            print('ROW-- $row');
        }

        ans.add(row);
    }
    return ans;
  }
}