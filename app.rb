# Class for term frequency (TF) score
# for words in a given corpus (documents).
class TermFrequency

  def initialize
    # Store all words in a corpus
    @words_hash = Hash.new
    @chapter_number = 0
    @largest_chapter_number = 0
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
      @words_hash[@chapter_number] = temp_array
      @chapter_number += 1
    end
    return @words_hash
  end

  # Get the number of times a word is in a chapter (hash key)
  def count_word(word_input)
    largest_word_count = 0
    @words_hash.each do |chapter, words|
      @word_counter = 0
      words.each do |word|
        if word == word_input
          @word_counter += 1
        end
      end
      # Compare last chapter, to find larger word count
      if @word_counter > largest_word_count
        largest_word_count = @word_counter
        @largest_chapter_number = chapter
        puts "New largest chapter - #{chapter}, words - #{largest_word_count}"
      end
    end
    return @largest_chapter_number
  end

end
