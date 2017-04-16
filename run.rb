load 'app.rb'

tf = TermFrequency.new
tf.get_files("corpus")

puts "Queequeg TF: #{tf.count_word("queequeg")} in Chapter #{tf.get_chapter}"
puts "whale TF: #{tf.count_word("whale")} in Chapter #{tf.get_chapter}"
puts "sea TF: #{tf.count_word("sea")} in Chapter #{tf.get_chapter}"
