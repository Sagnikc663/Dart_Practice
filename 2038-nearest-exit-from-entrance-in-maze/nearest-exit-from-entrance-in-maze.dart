import 'dart:collection';
class Solution {
  int nearestExit(List<List<String>> maze, List<int> entrance) {
    int rows = maze.length;
    int cols = maze[0].length;
    
    //Direction for movemenet --> up,down,left,right
    List<List<int>> direction = [[-1,0],[1,0],[0,-1],[0,1]];

    //BFS queue, stores [row,col,steps]

    Queue<List<int>> queue = Queue();
    queue.add([entrance[0], entrance[1], 0]);

    //mark the entrance visited by asserting '+' for the specific position
    maze[entrance[0]][entrance[1]] = '+';

    while(queue.isNotEmpty){
        List<int> current = queue.removeFirst();

        int row = current[0];
        int col = current[1];
        int steps = current[2];

        //explore neighbors
        for(List<int> directions in direction){
            int newRow = row + directions[0];
            int newCol = col + directions[1];

            // Check if the new position is within bounds and is an empty cell
            if(newRow >=0 && newRow < rows && newCol >=0 && newCol < cols && maze[newRow][newCol]=='.'){


            // Check if it's an exit (on the border and not the entrance)
            if(newRow==0 || newRow == rows -1 || newCol == 0 || newCol == cols -1){
                return steps+1;
            }

             // Mark as visited and add to the queue
             maze[newRow][newCol] = '+';
             queue.add([newRow,newCol,steps +1]);

                    }
        }
    }

    //no exit found
    return -1;
  }
}