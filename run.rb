load 'app.rb'

tf = TermFrequency.new
tf.get_files("corpus")

puts "Queequeg TF chapter: #{tf.count_word("queequeg")+1}"
puts "whale TF chapter: #{tf.count_word("whale")+1}"
puts "sea TF chapter: #{tf.count_word("sea")+1}"
