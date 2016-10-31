#write your code here

def is_vowel(letter)
  'aeiou'.include? letter
end

def is_qu (letters,n)
  letters[n] == "q" && letters[n+1] == "u"
end

def do_when_qu (letters, n)
  letters.push(letters[n])
  letters.push(letters[n+1])
  letters.shift *2
end

def translate (s)
  more_than_one_word = s.split' '
  def translate_single_word(s)
    letters = s.split''
    n = 0
    ile_liter = letters.length
    if is_vowel(letters[n])
      letters.push ('ay')
    else
      if (not is_vowel(letters[n])) && is_vowel(letters[n + 1])
        if is_qu(letters, n)
        do_when_qu(letters, n)
        letters.push ('ay')
        else
        letters.push(letters[n])
        letters.push ('ay')
        letters.shift
        end
      else
        while n < ile_liter
          if is_qu(letters, 0)
            do_when_qu(letters, 0)
          elsif not is_vowel(letters[0])
            letters.push(letters[0])
            letters.shift
          else
            break
          end
          n = n + 1
        end
        letters.push ('ay')
      end
    end
    letters.join
  end
  more_than_one_word.map {|word| translate_single_word(word)}.join' '
end
puts translate('spapple lpie')