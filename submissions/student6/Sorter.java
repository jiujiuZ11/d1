import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;

class Sorter {
  public static void main(String[] args) {
    ArrayList<Integer> a = new ArrayList<>();
    Scanner in = new Scanner(System.in);

    String s = in.nextLine();

    for(String num: s.split(" ")) {
      a.add(Integer.parseInt(num));
    }
    Collections.sort(a);
    int index = 0;
    for(Integer i: a) {
      System.out.print(i);
      index += 1;
      if(index < a.size()) {
        System.out.print(" ");
      }
    }
    System.out.println();
  }
}
