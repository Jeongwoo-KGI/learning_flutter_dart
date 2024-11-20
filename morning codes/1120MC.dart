class Solution {
  int minCostClimbingStairs(List<int> cost) {
    //int initial = 0;
    // int total = 0;
    int n = cost.length;
    // int initial = cost[n-1];
    // //if initiation starts from ascending order index: greedy 
    // //  thus, may not always result to have local min = global min
    // //So, try descending order
    // //  still greedy...
    // //when cost[0] is the initial start
    // for(int i=n-2;i>=1;i--){
    //     initial += min(cost[i], cost[i-1]);
    //     if (cost[i] >= cost[i-1]){
    //         i -= 1;
    //     }
    //     if (i == 1) break;
    // }
    // total = initial;
    // initial = cost[n-2];
    // //when cost[1] is the initial start
    // for(int i = n-3;i>=1;i--){
    //     initial += min(cost[i], cost[i-1]);
    //     if (cost[i] >= cost[i-1]){
    //         i-=1;
    //     }
    //     if (i==1) break;
    // }

    // return min(total, initial);

    //need for a list to contain answers to each stairs w minimum cost
    //choose min from i-1 or ith step
    // = index n-2, n-1
    if (n==2) return min(cost[0], cost[1]);
    
    List<int> total_cost = List<int>.filled(n,0);
    total_cost[0] = cost[0];
    total_cost[1] = cost[1];

    for (int i = 2; i<n; i++) {
        total_cost[i] = cost[i]+min(total_cost[i-1],total_cost[i-2]);
    }
    return min(total_cost[n-1], total_cost[n-2]);


  }
}
