#!/usr/bin/env ruby

require 'bcrypt'
require 'benchmark'
require 'humanize'
require 'pry'

include BCrypt

guesses = Array.new
costs = (4..14).to_a
(1001..11000).map { |num| guesses << num.humanize }

new_pass = "This is a long, complicated passphrase that won't be guessed."

costs.each do |cost|
  hashed_pass = Password.create(new_pass, cost: cost)

  time = Benchmark.measure do
    guesses.each do |guess|
      if hashed_pass == guess
        puts "match!"
      end
    end
  end

  puts "Guesses: #{guesses.count}"
  puts "Time: #{time}"
  puts "Cost: #{hashed_pass.cost}"
  puts "Salt: #{hashed_pass.salt}"
  puts "-------------------------"
end
