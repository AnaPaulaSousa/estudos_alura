class Cliente
    def initialize(nome, idade)
      @nome = nome
      @idade = idade
      debug_me
    end
  
    def debug_me
       puts "#{@nome},#{@idade}"
    end
  end

  class Conversor
    def initialize(nome)
        @nome = nome
        string_para_alfanumerico
    end
    def string_para_alfanumerico
        @nome.gsub /[^\w\s]/,''
        puts @nome
    end
end
  
  class Cliente
  
    #declarando o metodo agora como privado
    private
    def debug_me
      puts "um outro metodo de debug"
    end
  end
  
  Cliente.new("carlos", 30)

  Conversor.new("**Code!!!""")