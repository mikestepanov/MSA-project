require 'securerandom'
class Encryption
  def initiate
    puts "Enter the valid file path with \".txt\" extension."
    path = gets.chomp
    validate(path)
    @file = File.read(path)
    encrypt
    puts "Encryption completed"
  end

  private

  def encrypt
    mama = @file.sum
    papa = SecureRandom.random_number(1_000_000)
    pass = SecureRandom.hex
    @file
  end


  def validate(path)
    if file_exist?(path) && path.split(".").last.downcase == "txt"
      puts "The filepath is valid. Initiating..."
    else
      puts "Invalid filepath or file extension. Exiting..."
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
