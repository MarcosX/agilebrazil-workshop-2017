require_relative './cotacao_util'

class Serie

  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end

  def definir_preco(preco, moeda)
    @preco = preco
    @moeda = moeda
  end

  def preco_box(moeda)
    preco = CotacaoUtil.converter(@preco, @moeda, moeda)
    preco_moeda = preco/100
    preco_centavos = preco%100
    "#{moeda} #{preco_moeda}.#{preco_centavos}"
  end
end

