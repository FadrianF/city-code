carte_orase = {tecuci: 805300, galati: 803200, bucuresti: 500322, iasi: 400234,
cluj: 321545, timisoara: 700200, brasov: 500600, sibiu: 400211, craiova: 900200,
constanta: 5005000}

def display(hash) #displays all cities
  hash.each {|k,v| puts k.to_s.capitalize}
end


def trib(hash,oras) #displays the city code
  hash.select {|k,v| puts "The city code of #{k} is #{v}" if k.to_s.capitalize == oras.capitalize}
end


loop do #constantly asking the user for input
  puts "Are you looking for a city?(Y/N)"
  answer = gets.chomp
  if answer != "Y" && answer != "y"
    break
  end
  display(carte_orase)
  puts "Which city code are you interested in?"
  oras = gets.chomp
  if carte_orase.include?(oras.to_sym)
    puts "valid selection"
  else
    puts "invalid selection"
  end
  trib(carte_orase,oras)
end
