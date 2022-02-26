class Solver
  def factorial(n)
    return 'Please enter positive number' if n < 0
    return 1 if n == 0

    n * factorial(n - 1)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(n)
    if (n % 15).zero?
      'fizzbuzz'
    elsif (n % 5).zero?
      'buzz'
    elsif (n % 3).zero?
      'fizz'
    else
      n.to_s
    end
  end
end