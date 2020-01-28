# frozen_string_literal: true

# creates an employee and prints bits of info
module Chatty
  def say_hi
    puts "Hello, my name is #{name}"
    puts "my job title is #{title}"
    puts "I work in the #{department} department"
  end
end

# Employee has Chatty
class Employee
  include Chatty

  def name
    'Fred'
  end

  def title
    'Janitor'
  end

  def department
    'Maintenance'
  end
end
