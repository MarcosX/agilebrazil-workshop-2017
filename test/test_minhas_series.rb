require_relative './testing_helper'

class TestMinhasSeries < Minitest::Test

  def setup
    @catalogo = MinhasSeries.new
    @catalogo.limpar_series
  end

  def test_adiciona_nova_serie_assistindo
    serie = Serie.new('Brooklyn 99')
    @catalogo.adicionar_serie('assistindo', serie)

    assert_equal 1, @catalogo.series_assistindo.size
    assert_equal 'Brooklyn 99', @catalogo.series_assistindo.first.nome
  end

  def test_adiciona_nova_serie_assistida
    serie = Serie.new('The Office')
    @catalogo.adicionar_serie('assistida', serie)

    assert_equal 1, @catalogo.series_assistidas.size
    assert_equal 'The Office', @catalogo.series_assistidas.first.nome
  end

  def test_adiciona_nova_serie_assistir
    serie = Serie.new('Atypical')
    @catalogo.adicionar_serie('assistir', serie)

    assert_equal 1, @catalogo.series_assistir.size
    assert_equal 'Atypical', @catalogo.series_assistir.first.nome
  end

  def test_apenas_duas_series_podem_ser_assistidas
    serie_1 = Serie.new('Brooklyn 99')
    serie_2 = Serie.new('Suits')
    serie_3 = Serie.new('Atypical')
    @catalogo.adicionar_serie('assistindo', serie_1)
    @catalogo.adicionar_serie('assistindo', serie_2)
    @catalogo.adicionar_serie('assistindo', serie_3)

    assert_equal 2, @catalogo.series_assistindo.size
  end

  def test_adiciona_serie_duplicada
    serie = Serie.new('Brooklyn 99')
    @catalogo.adicionar_serie('assistindo', serie)
    @catalogo.adicionar_serie('assistindo', serie)

    assert_equal 1, @catalogo.series_assistindo.size
    assert_equal 'Brooklyn 99', @catalogo.series_assistindo.first.nome
  end
end
