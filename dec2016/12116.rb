#https://www.reddit.com/r/dailyprogrammer/comments/5emuuy/20161124_challenge_293_intermediate_defusing_the/

#wires = ["white", "white", "red", "white", "orange", "black", "black", "green", "orange"]
wires = ["white", "white", "green", "orange", "green"]
stage = 0
option = 0

def defused(fate)
  if fate
    puts "Defused"
  else
    puts "Boom"
  end
  abort
end

def stageZero(option, wires)
  if wires[option] == "white"
    return 1
  elsif wires[option] == "red"
    return 2
  else
    defused(false)
  end
end

def stageOne(option, wires)
  if wires[option] == "white"
    return 2
  elsif wires[option] == "orange"
    return 3
  else
    defused(false)
  end
end

def stageTwo(option, wires)
  if wires[option] == "red"
    return 0
  elsif wires[option] == "black"
    return 3
  else
    defused(false)
  end
end

def stageThree(option, wires)
  if wires[option] == "black"
    return 3
  elsif wires[option] == "orange"
    return 5
  elsif wires[option] == "green"
    return 4
  else
    defused(false)
  end
end

def stageFour(option, wires)
  if wires[option] == "orange"
    defused(true)
  end
  defused(false)
end

def stageFive(option, wires)
  if wires[option] == "green"
    defused(true)
  end
  defused(false)
end

while(option != wires.length)
  case stage
    when 0
      stage = stageZero(option, wires)
    when 1
      stage = stageOne(option, wires)
    when 2
      stage = stageTwo(option, wires)
    when 3
      stage = stageThree(option, wires)
    when 4
      stage = stageFour(option, wires)
    when 5
      stage = stageFive(option, wires)
    else
      puts "ERROR: Stage # is wrong #{stage}"
  end
  option += 1
end
