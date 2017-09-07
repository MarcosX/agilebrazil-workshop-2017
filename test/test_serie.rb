require_relative './testing_helper'

class TestSerie < Minitest::Test

  def test_adiciona_preco_box
    serie = Serie.new('The Office')
    serie.definir_preco(49990, 'BRL')

    assert_equal 'BRL 499.90', serie.preco_box('BRL')
    assert_equal 'USD 159.96', serie.preco_box('USD')
    assert_equal 'EUR 129.97', serie.preco_box('EUR')
  end
end
