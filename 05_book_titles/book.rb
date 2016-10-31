class Book
  # attr_accessor :title
  @@tab_conjuntions = ["and", "or", "but", "in", "at", "the", "on", "of", "a", "an"]
  def title=(t)
    #@title=
    tab_words = (t.split' ').map {|n|
      if @@tab_conjuntions.include? n
        n.downcase
      else
        n.capitalize
      end
    }
    tab_words[0].capitalize!
    @title = tab_words.join' '
  end

  def title
    @title
  end

end

book = Book.new

book.title = 'new title'

puts book.title
