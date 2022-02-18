# frozen_string_literal: true

load 'main.rb'
require 'minitest/autorun'

# mini_tests.rb

# Test 1

class TestRobot < Minitest::Test
  def func1(rad, eps, num = 6)
    a = 2 * rad * Math.sin(Math::PI / 6)
    area = 0
    loop do
      p = a * num
      a = Math.sqrt((2 * rad * rad - rad * Math.sqrt(4 * rad * rad - a**2)).abs)
      num *= 2
      area = (p - p1(rad)).abs
      break if (p - p1(rad)) < eps
    end
    area
  end

  def test_func1
    assert_equal(f1_dlina_okr(45, 0.01), func1(45, 0.01))
  end

  def test_func2
    assert_equal(f1_dlina_okr(50, 0.001), func1(50, 0.001))
  end

end
