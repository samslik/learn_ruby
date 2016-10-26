#write your code here


=begin
  moreWords = s.split (' ')
  puts moreWords
end


translate('wielka dziura')
=end


def is_vowel(letter)
  'aeiouy'.include? letter
end

def translate (s)
  letters = s.split''
  n = 0
  ile_liter = letters.length
  if is_vowel(letters[n])
    letters.push ('ay')
    letters.join
  else
    if (not is_vowel(letters[n])) && is_vowel(letters[n + 1])
      letters.push(letters[n])
      letters.push ('ay')
      letters.shift
      letters.join
    else
      while n < ile_liter
        if not is_vowel(letters[n])
          letters.push(letters[n])
        else
          letters.shift n
          break
        end
        n = n + 1
      end
      letters.push ('ay')
      letters.join
    end
  end
end
puts translate('lpapple')



=begin
def translate (s)
  letters = s.scan /\w/
  if letters[0] == 'a' || letters[0] =='i' || letters[0] =='o' || letters[0] =='e'
    letters.push ('ay')
    letters.join
  elsif
  (letters[0] != 'a' && letters[0] !='i' && letters[0] !='o' && letters[0] !='e') && (letters[1] != 'a' && letters[1] !='i' && letters[1] !='o' && letters[1] !='e')
    letters.push(letters[0])
    letters.shift
    letters.push(letters[0])
    letters.shift
    letters.push ('ay')
    letters.join
  else
    letters.push(letters[0])
    letters.push ('ay')
    letters.shift
    letters.join
  end
end

puts translate('maaeko')
=end