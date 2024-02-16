import java.util.ArrayList;
import java.util.Scanner;

class Sorter {
  public static void main(String[] args) {
    ArrayList<Integer> a = new ArrayList<>();
    Scanner in = new Scanner(System.in);

    String s = in.nextLine();

    for(String num: s.split(" ")) {
      a.add(Integer.parseInt(num));
    }
    // sort the arraylist a in place
    // Filled by copilot
    for(int i = 0; i < a.size(); i += 1) {
        for(int j = 0; j < a.size() - 1; j += 1) {
            if(a.get(j) > a.get(j + 1)) {
            int temp = a.get(j);
            a.set(j, a.get(j + 1));
            a.set(j + 1, temp);
            }
        }
    }


    for(int i = 0; i < a.size(); i += 1) {
      System.out.print(a.get(i));
      if(i < a.size() - 1) { System.out.print(" "); }
    }
    System.out.println();
  }
}

