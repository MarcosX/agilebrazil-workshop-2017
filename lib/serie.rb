require 'date'
require_relative './cotacao_util'
require_relative './dinheiro'

class Serie

  attr_reader :nome, :premiere, :finale, :episodios

  def initialize(nome, premiere: '', finale: '', episodios: 0)
    @nome = nome
    @premiere = premiere
    @finale = finale
    @episodios = episodios
  end

  def definir_preco(preco, moeda)
    @dinheiro = Dinheiro.new(preco, moeda)
  end

  def preco_box(moeda)
    preco = CotacaoUtil.converter(@dinheiro.valor, @dinheiro.moeda, moeda)
    preco_moeda = preco/100
    preco_centavos = preco%100
    "#{moeda} #{preco_moeda}.#{preco_centavos}"
  end
end

