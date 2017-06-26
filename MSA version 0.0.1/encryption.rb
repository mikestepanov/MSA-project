class Encryption
  def initiate
    puts "Enter the valid file path."
    path = gets.chomp
    puts "Your file path is \"#{path}\"."
  end
end




if __FILE__ == $PROGRAM_NAME
  encryption = Encryption.new
  encryption.initiate
end
