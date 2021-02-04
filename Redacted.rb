# a simple program that redacts a specified word from a given sentence
puts "Enter the text to search through"
text = gets.chomp
text.downcase
words = text.split(' ')

puts "Enter the words to redact"
redact =  gets.chomp
redact_words = redact.split(' ')

words.each do |word|
    print (redact_words.include? word) ? "REDACTED" : word #if the expression in the parenthesis evaluates to true, print redacted else word
    print " "
  end
