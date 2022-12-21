# frozen_string_literal: true

#   Myslím si trojciferné číslo.
#   Keď ho vydelím prvou cifrou, druhou cifrou a treťou cifrou tak výsledok bude 4.
#   Keď k nemu pripočítam 99, tak výsledkom bude číslo s obrátenými ciframi.
#
#   Aké číslo si myslím?

(100..999).each do |i|
  string = i.to_s
  next unless string[0] != '0' && string[1] != '0' && string[2] != '0'

  result = i / string[0].to_f
  result2 = result / string[1].to_f
  result3 = result2 / string[2].to_f
  puts i, result, result2, result3, string.reverse if (result3 == 4 && i + 99) == string.reverse.to_i
end
