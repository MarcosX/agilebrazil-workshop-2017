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
    @dinheiro.converte_moeda(moeda).exibir_valor_monetario
  end

  def converte_moeda(dinheiro, moeda)
    preco = CotacaoUtil.converter_com_dinheiro(@dinheiro, moeda)
    Dinheiro.new(preco, moeda)
  end
end

