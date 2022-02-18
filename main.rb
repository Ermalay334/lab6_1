# frozen_string_literal: true

def p1(rad)
    2 * Math::PI * rad
  end
  
  def a(rad, aaa)
    Math.sqrt((2 * rad * rad - 2 * rad * Math.sqrt(rad * rad - aaa**2 / 4)).abs)
  end
  
  def f1_dlina_okr(rad, eps, num = 6)
    a = 2 * rad * Math.sin(Math::PI / 6)
    area = 0
    loop do
      p = a * num
      a = a(rad, a)
      num *= 2
      area = (p - p1(rad)).abs
      break if p - p1(rad) < eps
    end
    area
  end