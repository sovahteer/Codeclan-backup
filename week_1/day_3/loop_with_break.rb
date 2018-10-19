while (true)
  p "type something"
  line = gets.chomp()
  break if (line == "q")
  p "you typed: #{line}"
end
