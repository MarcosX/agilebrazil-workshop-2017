class Dinheiro

  attr_reader :valor, :moeda

  def initialize(valor, moeda)
    @valor = valor
    @moeda = moeda
  end

  def exibir_valor_monetario
    preco_moeda = @valor/100
    preco_centavos = @valor%100
    "#{@moeda} #{preco_moeda}.#{preco_centavos}"
  end
end

