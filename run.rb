load 'app.rb'

tf = TermFrequency.new
tf.get_files("corpus")
tf.cound_word("sea")
