load 'app.rb'

tf = TermFrequency.new
tf.get_files("corpus")

puts "Queequeg TF: #{tf.count_word("queequeg")}"
puts "whale TF: #{tf.count_word("whale")}"
puts "sea TF: #{tf.count_word("sea")}"
