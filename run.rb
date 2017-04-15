load 'app.rb'

tf = TermFrequency.new
tf.get_files("corpus")

puts "Queequeg TF chapter: #{tf.count_word("queequeg")}"
puts "whale TF chapter: #{tf.count_word("whale")}"
puts "sea TF chapter: #{tf.count_word("sea")}"
