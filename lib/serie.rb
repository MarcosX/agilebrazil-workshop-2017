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
    Dinheiro.new(preco, moeda).exibir_valor_monetario
  end

  def exibir_valor_monetario(preco, moeda)
    preco_moeda = preco/100
    preco_centavos = preco%100
    "#{moeda} #{preco_moeda}.#{preco_centavos}"
  end
end

