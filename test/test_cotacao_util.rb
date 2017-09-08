require_relative './testing_helper'

class TestCotacaoUtil < Minitest::Test

  def test_cotacao_valid
    assert_equal 309, CotacaoUtil.converter_com_dinheiro(Dinheiro.new(100, 'USD'), 'BRL')
  end

  def test_cotacao_invalida
    assert_raises(ArgumentError) { CotacaoUtil.converter_com_dinheiro(Dinheiro.new(100, 'USB'), 'BRT') }
  end
end
