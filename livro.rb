class Livro
    attr_reader :titulo, :preco, :ano_lancamento
    def initialize(titulo, preco, ano_lancamento, possui_reimpressao)
      @titulo = titulo
      @preco = preco
      @ano_lancamento = ano_lancamento
      #@preco *= 0.7 if @ano_lancamento < 2000 # livro.preco = livro.preco * 0.7
      @preco = calcula_preco(preco)
      @possui_reimpressao = possui_reimpressao
    end

    def possui_reimpressao?
        @possui_reimpressao
    end

    def to_csv
        puts "#{@titulo}, #{@ano_lancamento}, #{@preco}" 
    end
    
    private

    def calcula_preco(base)
       if @ano_lancamento < 2006
            if possui_reimpressao?
                base * 0.9
            else
                base * 0.95
            end
        elsif @ano_lancamento <= 2010
            base * 0.96
        else
            base
        end
    end
end

