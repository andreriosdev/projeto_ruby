# insira_dados.rb

# Solicita dados do usuário
puts "Digite seu nome:"
nome = gets.chomp

puts "Digite sua idade:"
idade = gets.chomp

puts "Digite sua cidade:"
cidade = gets.chomp

# Salva os dados em um arquivo
File.open("dados_usuario.txt", "a") do |arquivo|
  arquivo.puts "Nome: #{nome}"
  arquivo.puts "Idade: #{idade}"
  arquivo.puts "Cidade: #{cidade}"
  arquivo.puts "---"
end

puts "Dados salvos em dados_usuario.txt!"

# Adiciona o arquivo ao Git
system("git add dados_usuario.txt")

# Faz o commit das alterações
system('git commit -m "Adiciona novos dados do usuário"')

# Envia as alterações para o repositório remoto
system("git push origin main")

puts "Dados enviados para o repositório!"
