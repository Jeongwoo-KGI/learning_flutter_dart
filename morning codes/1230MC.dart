class Solution {
public:
    vector<string> letterCombinations(string digits) {
        Map<String, List<String>> numString = {'2':['a','b','c'],'3':['d','e','f'], '4':['g','h','i'],'5':['j','k','l'],'6':['m','n','o'],'7':['p','q','r','s'],'8':['t','u','v'],'9':['w','x','y','z']};
        List<String> answer = [];
        //backtracking
        int n = digits.length;
        void backtrack(int index, String current){
            if (index == n){
                answer.add(current);
                return;
            }
            List<String> letters = numString[digits[index]];
            for (int i = 0; i<letters.length; i++) {
                backtrack(i+1, current+letters[i])
                
            }
        }
        backtrack(0,""); //initiate
        return answer;
    }
};
