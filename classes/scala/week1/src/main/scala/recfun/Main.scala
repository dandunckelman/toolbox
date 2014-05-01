package recfun
import common._

object Main {
  def main(args: Array[String]) {
    println("Pascal's Triangle")
    for (row <- 0 to 10) {
      for (col <- 0 to row)
        print(pascal(col, row) + " ")
      println()
    }
  }

  /**
   * Exercise 1
   * The numbers at the edge of the triangle are all 1,
   * and each number inside the triangle is the sum of the two numbers above it
   * pascal(0, 0) = 1
   * pascal(0, 1) = 1
   * pascal(1, 1) = 1
   * pascal(4, 0) = 1
   * pascal(1, 2) = 2
   * pascal(1, 4) = 4
   * pascal(2, 4) = 6
   * pascal(3, 4) = 4
   */
  def pascal(c: Int, r: Int): Int = 
    

  /**
   * Exercise 2
   */
  def balance(chars: List[Char]): Boolean = ???

  /**
   * Exercise 3
   */
  def countChange(money: Int, coins: List[Int]): Int = ???
}
