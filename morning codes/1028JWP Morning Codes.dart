// 1 최대공약수 of 문자열
// 리스트로 input1을 만들고 input2의 시작점에 따라 리스트 inpu1에서 비교 및 가져오기?
class q1Solution() {
    List<String> maximal(List<String> input1, List<string> input2) {

    //     var answers = new Map();
    //     int count = 0;
    //     String tracker;

    //     for (int i = 0; i<input1.length; i++) {
    //         for (int j = 0; j<input2.length, j++) {
    //             if (input1[j] == input2[i]) {
    //                 answers.add(tracker:tracker.length);
    //                 count += 1;
    //                 tracker += input1[j]
    //             } else [
    //                 count = 0;
    //                 tracker = '';
    //             ]
    //         }
    //     }

    // //finding the longest    
    // answers.forEach((k,v)){
    //     if(v>thevalue) [
    //         thevalue = v;
    //         thekey = k;
    //     ]
    // }
    // return (thekey)

    class Node {
        Node parent; //parent of the current node
        List<Node> children; //children of the current node
        int id;
    }

    void addNode(Node parent, Node newNode) {
        newNode.parent = parent;
        parent.children.add(newNode);
    }

    Node root = new Node(0, input1[0])
    for (int i=0; i<input1.length; i++){
        Node input1[i] = new Node(i, input1[i])
    }

    }

}