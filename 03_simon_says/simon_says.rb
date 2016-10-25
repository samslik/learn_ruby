#write your code here
def echo(words)
  words
end

def shout(repeat)
  repeat.upcase
end

def repeat(repeat,repNumb = 2)
  (repeat + ' ') * (repNumb - 1) + repeat
end

def start_of_word(stWord, lettersNumber)
  i = 0
  start = ''
  while i < lettersNumber do
  start = start + stWord[i]
  i+=1
  end
  start
end

def first_word (str)
  str.split[0]
end

def titleize (words)
  words.split.map {|n| n.capitalize}.join(' ')
end