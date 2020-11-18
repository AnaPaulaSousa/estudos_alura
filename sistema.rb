require_relative "livro"
require_relative "estoque"

def livro_para_news_letter(livro)
    if livro.ano_lancamento < 1999
        puts "NewsLetter/Liquidação"
        puts livro.titulo
        puts livro.preco
        puts livro.possui_reimpressao
    end
end

algoritmos = Livro.new("Algoritmos", 100, 1998, true)
arquitetura = Livro.new("Introdução a Arquitetura e Design de Software", 70, 2011, true)
programmer = Livro.new("The Pragmatic Programmer", 100, 1999, true)
ruby = Livro.new("Programming Ruby", 100, 2004, true)

estoque = Estoque.new
estoque << algoritmos 
puts estoque.maximo_necessario
estoque << arquitetura
puts estoque.maximo_necessario
estoque << programmer
puts estoque.maximo_necessario
estoque << ruby
puts estoque.maximo_necessario
estoque.remove algoritmos
puts estoque.maximo_necessario

estoque.exporta_csv  

baratos = estoque.mais_barato_que(80)
baratos.each do |livro|
    puts "#{livro.titulo}" 
end



#livro_para_news_letter(algoritmos)

# livro_rails = Livro.new(70, "Agile Web Development with Rails", 2011)
# livro_ruby = Livro.new(60, "Programming Ruby 1.9", 2010)

# def imprime_nota_fiscal(livros)
#     livros.each do |livro|
#         puts "Título: #{livro.titulo} - #{livro.preco}"        
#     end
    
# end

# livros = [livro_rails, livro_ruby]
# imprime_nota_fiscal livros
