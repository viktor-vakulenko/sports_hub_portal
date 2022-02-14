# frozen_string_literal: true

def my_printer
  puts 'Hello, world'
end

def thrice(&block)
  3.times(&block)
end

def my_method
  if block_given?
    yield
  else
    puts 'block_given? = FALSE'
  end
end

def named_block(&block)
  if block.nil?
    puts 'No block'
  else
    block.call
  end
end

def simple_enum
  yield 4
  yield 3
  yield 2
  yield 1
end

my_method

my_method { puts 'We have block, awesome !' }

thrice(&method(:my_printer))

simple_enum do |val|
  puts "this is value: #{val}"
end

def divisible_by?(num, _input)
  ->(input) { (input % num).zero? }
end

def fizzbuzz_from(value)
  Enumerator::Lazy.new(value..Float::INFINITY) do |yielder, val|
    yielder << case val
               when divisible_by?(15)
                 'FizzBuzz'
               when divisible_by?(3)
                 'Fizz'
               when divisible_by?(5)
                 'Buzz'
               else
                 val
               end
  end
end
x = fizzbuzz_from(7)
# => #<Enumerator::Lazy: 7..Infinity:each>

# 9.times { puts x.next }

10.times { puts divisible_by?(10_203, 1).call }
