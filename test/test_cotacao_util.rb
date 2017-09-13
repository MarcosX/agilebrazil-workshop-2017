require_relative './testing_helper'

class TestCotacaoUtil < Minitest::Test

  def test_cotacao_valida
    assert_equal 309, CotacaoUtil.converter(100, 'USD', 'BRL')
  end

  def test_moeda_base_invalida
    assert_raises(ArgumentError) { CotacaoUtil.converter(100, 'USB', 'BRL') }
  end

  def test_moeda_conversao_invalida
    assert_raises(ArgumentError) { CotacaoUtil.converter(100, 'USD', 'BRT') }
  end

  def test_total_de_cotacoes
    assert_equal 3, CotacaoUtil.moedas.size
  end

  def test_cotacao_BRL_existe
    assert CotacaoUtil.moeda_existe?('BRL')
  end

  def test_cotacao_USD_existe
    assert CotacaoUtil.moeda_existe?('USD')
  end

  def test_cotacao_EUR_existe
    assert CotacaoUtil.moeda_existe?('EUR')
  end
end
