# Class for term frequency (TF) score
# for words in a given corpus (document).
class TermFrequency

  def initialize
    # Store all words in a corpus
    @words_hash = Hash.new
  end

  # Find all files in a given directory
  def get_files(file_path)
    Dir.foreach(file_path) do |file|
      unless file == '.' or file == '..'
        read_contents(file_path, file)
      end
    end
  end

  # Read all files in a given directory.
  # First iterate through each line, then by each word.
  # Words are stored in a hash, with chapters as keys.
  def read_contents(file_path, text_file)
    temp_array = Array.new
    File.open("#{file_path}/#{text_file}", 'r') do |chapter|
      chapter.each_line do |line|
        split_content = line.downcase.gsub(/[^0-9a-z]/, ' ').split(' ')
        split_content.each do |word|
          temp_array.push(word)
        end
      end
      @words_hash[:chapter] = temp_array
    end
    return @words_hash
  end

  # Get the number of times a word is in the hash
  def count_word(word_input)
    counter = 0
    # highest_tf
    @words_hash[:chapter].each do |word|
      if word == word_input
        counter += 1
      end
    end
    return counter
  end

end
