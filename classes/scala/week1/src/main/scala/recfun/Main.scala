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

    println(countChange(4, List(1, 2)))
  }

  /**
   * Exercise 1
   */
  def pascal(c: Int, r: Int): Int = {
    // set value to 1 when on the edges
    if (c <= 0 || c == r) {
      1
    } else {
      // get value by summing the above row in the same column
      // with the above row and one column to the left
      pascal(c, r - 1) + pascal(c - 1, r - 1)
    }
  }

  /**
   * Exercise 2
   */
  def balance(chars: List[Char]): Boolean = {
    def isBalanced(parens: List[Char], leftParens: Int, rightParens: Int): Boolean = {
      if (parens.isEmpty) {
        // when in the last iteration or a truly empty list
        if (rightParens > leftParens) {
          false
        } else {
          true
        }
      } else {
        // return false if at any time there are too many right parens
        if (rightParens > leftParens) false
        else {
          // call again w/ updated params
          if (parens.head == '(') {
            isBalanced(parens.tail, leftParens + 1, rightParens)
          } else {
            isBalanced(parens.tail, leftParens, rightParens + 1)
          }
        }
      }
    }

    // filter list to only have parens
    isBalanced(chars.filter(Set('(', ')')), 0, 0)
  }

  /**
   * Exercise 3
   */
  def countChange(money: Int, coins: List[Int]): Int = {
    def counter(money: Int, coins: List[Int]): Int = {
      if (money == 0) 1
      // with no money or an empty list, we can't make change
      else if (money <= 0 || coins.isEmpty) 0
      // with money and no list, we can't make change
      else if (coins.isEmpty && money >= 1) 0
      else {
        counter(money, coins.tail) + counter(money - coins.head, coins)
      }
    }

    counter(money, coins)
  }
}
