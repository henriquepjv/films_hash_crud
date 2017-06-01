movies = { matrix: 5, hobbit: 5, spiderman: 4 }

puts "Escolha uma opção:"
puts "add - Adicionar novo filme"
puts "update - Atualizar existente"
puts "display - Mostra todos"
puts "delete - Deleta filme escolhido"
choice = gets.chomp

case choice
when "add"
  puts "Digite o título do novo filme"
  title = gets.chomp.intern
  if movies[title].nil?
    puts "Digite a nota"
    rating = gets.chomp.to_i
    movies[title] = rating
    puts "Filme adicionado, gratz"
  else
    puts "filme já consta em nosso cadastro"
  end

when "update"
  puts "Digite o filme que será atualizado"
  title = gets.chomp.to_sym
  if movies[title].nil?
    puts "Erro, esse filme não está em nossa lista"
  else
    puts "Digite a nova nota"
    rating = gets.chomp.to_i
    movies[title] = rating
  end

when "display"
  movies.each { |k, v| puts "#{k}: #{v}" }

when "delete"
  puts "Insira o filme a ser deletado"
  title = gets.chomp.to_sym
  if movies[title].nil?
    puts "Filme não encontrado"
  else
    movies.delete(title)
  end

else
  puts "Error!"
end
