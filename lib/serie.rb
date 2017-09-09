require 'date'
require_relative './cotacao_util'
require_relative './dinheiro'

class Serie

  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end

  def definir_preco(preco, moeda)
    @dinheiro = Dinheiro.new(preco, moeda)
  end

  def preco_box(moeda)
    preco = CotacaoUtil.converter_com_dinheiro(@dinheiro, moeda)
    preco_moeda = preco/100
    preco_centavos = preco%100
    "#{moeda} #{preco_moeda}.#{preco_centavos}"
  end
end

