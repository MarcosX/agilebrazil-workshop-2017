require 'date'
require_relative './cotacao_util'

class Serie

  attr_reader :nome, :premiere, :finale, :episodios, :preco, :moeda

  def initialize(nome, premiere: '', finale: '', episodios: 0)
    @nome = nome
    @premiere = premiere
    @finale = finale
    @episodios = episodios
  end

  def definir_preco(preco, moeda)
    @preco = preco
    @moeda = moeda
  end

  def preco_box(moeda)
    preco = CotacaoUtil.converter(self.preco, self.moeda, moeda)
    preco_moeda = preco/100
    preco_centavos = preco%100
    "#{moeda} #{preco_moeda}.#{preco_centavos}"
  end

  def preco
    @preco
  end

  def moeda
    @moeda
  end
end

