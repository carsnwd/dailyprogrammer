wires = "white", "orange", "green", "white"

combinations = {
  "white" => "white black",
  "red" => "white black purple orange red",
  "black" => "white green orange",
  "orange" => "white purple green orange",
  "green" => "black purple green red",
  "purple" => "purple green orange white"
}

wires.each_with_index do |item, index|

  if combinations[item].include?(wires[index+1])
    puts "Boom"
    abort
  end
  if index+1 == wires.length - 1
    break
  end
end

puts "Defused"
