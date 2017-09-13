require_relative './testing_helper'

class TestSerie < Minitest::Test

  def test_mostra_preco_box_varias_moedas
    serie = Serie.new('The Office')
    serie.definir_preco(49990, 'BRL')

    assert_equal 'BRL 499.90', serie.preco_box('BRL')
    assert_equal 'USD 159.96', serie.preco_box('USD')
    assert_equal 'EUR 129.97', serie.preco_box('EUR')
  end

  def test_serie_sem_preco
    serie = Serie.new('The Office')
    assert_raises(ArgumentError) { serie.preco_box('BRL') }
  end

  def test_serie_com_moeda_invalida
    serie = Serie.new('The Office')
    serie.definir_preco(49990, 'BRT')

    assert_raises(ArgumentError) { serie.preco_box('BRL') }
  end

  def test_preco_box_com_moeda_invalida
    serie = Serie.new('The Office')
    serie.definir_preco(49990, 'BRL')

    assert_raises(ArgumentError) { serie.preco_box('USB') }
  end
end
