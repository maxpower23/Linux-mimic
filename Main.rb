#Program that "mimics" a linux cli. With limited functionality
loop do
  var= Array.new
  var= gets.chomp.split(" ")
  case var[0]
    #ls : List contents of a folder
    when "ls"
      #Caso 1: "ls" solo
      if var[1]==nil
        puts Dir.entries(Dir.getwd) unless Dir.empty?(Dir.getwd)
      #Caso 2: "ls" con predicado
      elsif var[1]!=nil
        puts Dir.entries(var[1]) unless Dir.empty?(var[1])
      end
    #cd : Change directory
    when "cd"
      Dir.chdir(var[1])
    #pwd : See current directory you're positioned in
    when "pwd"
      puts Dir.getwd
    else
      puts "NonRecognizedArgument"
  end
end