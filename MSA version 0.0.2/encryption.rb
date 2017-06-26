class Encryption
  def initiate
    puts "Enter the valid file path with \".txt\" extension."
    path = gets.chomp
    validate(path)
    @file = File.readlines(path)
    p @file
  end

  private

  def validate(path)
    if file_exist?(path)
      puts "The filepath is valid."
      if path.split(".").last.downcase != "txt"
        puts "File is not .txt file. Exiting..."
        exit()
      end
    else
      puts "Invalid path. Exiting..."
      exit()
    end
  end

  def file_exist?(path_to_file)
    File.exist?(path_to_file)
  end
end




if __FILE__ == $PROGRAM_NAME
  encryption = Encryption.new
  encryption.initiate
end
