def greeting
  index = 0
  first_arg = ""
  ARGV.each do |arg|
    if index == 0
      first_arg = arg
      index += 1
    else
      puts "#{first_arg} #{arg}"
      index += 1
    end
  end
end

greeting
