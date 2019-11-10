File.open("learn_to_code-ruby/Section_16/NewFile.txt", "w") do |file|

  file.puts "This is a text file"

end

File.rename("learn_to_code-ruby/Section_16/NewFile.txt", "learn_to_code-ruby/Section_16/NewFile-Renamed.txt")

if File.exist?("learn_to_code-ruby/Section_16/NewFile-Renamed.txt")

  File.delete("learn_to_code-ruby/Section_16/NewFile-Renamed.txt")

end
