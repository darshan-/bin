#!/usr/bin/ruby

def fac(n)
  return 1 if n<=1
  n * fac(n-1)
end

def sum(range, proc)
  pi = Math::PI
  e  = Math::E

  sum = 0

  for n in range do
    sum += proc.call(n)
  end

  sum
end

def intf(m, s, x, n=100)
  p = Proc.new {|n|
    (1.0 / (s*Math::sqrt(2*Math::PI))) *
    (-1.0)**n * (1/(s*Math::sqrt(2)))**(2*n) * (x-m)**(2*n+1) /
    ((2*n+1)*fac(n))
  }


  sum(0..n, p)
end

def main
  if ARGV.length < 4 or ARGV.length > 5
    puts "Usage: pr.rb mean standard_devation lower upper [steps]"
    exit
  end

  n = 100

  m = ARGV[0].to_f
  s = ARGV[1].to_f
  l = ARGV[2].to_f
  u = ARGV[3].to_f
  n = ARGV[4].to_f if ARGV.length > 4


  # Seven standard deviations above/below mean encompasses "close enough" to
  #   100% of a Normal population (and we start getting overflow beyond that)
  min = m - 7 * s
  max = m + 7 * s

  if (ARGV[2] == '-inf') or (l < min)
    l = min
  end

  if (ARGV[3] == 'inf') or (u > max)
    u = max
  end


  puts intf(m, s, u, n) - intf(m, s, l, n)
end

if __FILE__ == $PROGRAM_NAME
  main()
end
