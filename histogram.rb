# a ruby program to print the frequency of occuring words in a sentence
puts "Enter text below: "
text = gets.chomp

words  = text.split
frequencies = Hash.new(0) #creating a hash with a default value

words.each {
  |word| frequencies[word] += 1
}

frequencies = frequencies.sort_by{|word, count|
count
}
frequencies.reverse!

frequencies.each {|key,value| puts key + " " + value.to_s
}
