nomes = []
File.open('nomes.txt', 'r') do |infile|
  while(line = infile.gets)
    nomes << line.chomp unless line.chomp.empty?
  end
end
puts "Sorteando entre #{nomes.size} nomes"
nomes.each {|nome| puts "==> #{nome}"}
sorteado = nomes.sample
puts '...'
gets
puts "Parabéns #{sorteado}, você ganhou!"
