require_relative './testing_helper'

class TestCotacaoUtil < Minitest::Test

  def test_cotacao_valid
    assert_equal 309, CotacaoUtil.converter(100, 'USD', 'BRL')
  end

  def test_cotacao_invalida
    assert_raises(ArgumentError) { CotacaoUtil.converter(100, 'USB', 'BRT') }
  end
end
