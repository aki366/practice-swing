package java_swing;

public class Calculator {
  public static void main(String[] args) {
    if (args.length > 0) {
      System.out.println(Integer.parseInt(args[0]) * 2);
    } else {
      System.out.println("no args");
    }
  }
}
