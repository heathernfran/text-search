# Class for term frequency (TF) score
# for words in a given corpus (document).
class TermFrequency

  def initialize
    # Store all words in a corpus
    @words_array = Array.new
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
  # Words are stored in an array.
  def read_contents(file_path, text_file)
    File.open("#{file_path}/#{text_file}", 'r') do |chapter|
      chapter.each_line do |line|
        split_content = line.downcase.gsub(/[^0-9a-z]/, ' ').split(' ')
        split_content.each do |word|
          @words_array.push(word)
        end
      end
    end
    puts @words_array.length
    return @words_array
  end

  def count_word(word_input)
    counter = 0
    words_array.each do |word|
      if word == word_input
        counter++
      end
    end
  end

end
