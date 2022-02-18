# frozen_string_literal: true

require 'main'

puts("Enter r:")
r = gets.chomp.to_i
puts f1_dlina_okr(r, 10**-3)
puts f1_dlina_okr(r, 10**-4)