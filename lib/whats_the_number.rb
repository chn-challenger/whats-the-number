class WhatsTheNumber
  
  def is_prime?(n)
    n < 2 ? false: (2..Math.sqrt(n)).none? {|x| n % x == 0}
  end

  def sum_primes_less_than number
    array = (1..number)
    array_p = array.select{|p| is_prime?(p)}
    array_p.inject(0){|result, x| result + x}
  end

end


