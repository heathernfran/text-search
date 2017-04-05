load 'app.rb'

tf = TermFrequency.new
tf.get_files("corpus")
tf.count_word("sea")
