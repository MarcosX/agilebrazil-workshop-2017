require_relative './testing_helper'

class TestCatalogoSerie < Minitest::Test

  def test_cria_catalogo_assistidas
    catalogo = CatalogoSeries.criar_catalogo('assistida')
    assert catalogo.is_a?(CatalogoSeriesAssistidas)
  end

  def test_cria_catalogo_assistindo
    catalogo = CatalogoSeries.criar_catalogo('assistindo')
    assert catalogo.is_a?(CatalogoSeriesAssistindo)
  end

  def test_cria_catalogo_assistir
    catalogo = CatalogoSeries.criar_catalogo('assistir')
    assert catalogo.is_a?(CatalogoSeriesAssistir)
  end
end
