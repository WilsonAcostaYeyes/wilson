read = 'punto4.rb'
if(File.exist?(read)) 
	file=read
	File.readlines(file).each do |line|
	puts line
end
else 
puts "El archivo #{read} no existe"
end
