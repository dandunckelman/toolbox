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

    val test_list1 = "".toList
    val test_list2 = "(if (zero? x) max (/ 1 x))".toList
    val test_list3 = "I told him (that it's not (yet) done). (But he wasn't listening)".toList
    println(balance(test_list1))
    println(balance(test_list2))
    println(balance(test_list3))
  }

  /**
   * Exercise 1
   */
  def pascal(c: Int, r: Int): Int = {
    if (c <= 0 || c == r) 1 else pascal(c, r - 1) + pascal(c - 1, r - 1)
  }

  /**
   * Exercise 2
   */
  def balance(chars: List[Char]): Boolean = {
    def isBalanced(): Boolean = {
      val parens = chars.filter(Set('(', ')'))
      if (parens.isEmpty == true) true
      else (false)
    }

    if (chars.isEmpty == true) true
    else (isBalanced())
  }

  /**
   * Exercise 3
   */
  def countChange(money: Int, coins: List[Int]): Int = ???
}
