class CatalogoSeries

  def initialize
    @series = []
  end

  def self.criar_catalogo(status)
    case status
    when 'assistida'
      CatalogoSeriesAssistidas.new
    when 'assistindo'
      CatalogoSeriesAssistindo.new
    when 'assistir'
      CatalogoSeriesAssistir.new
    end
  end
end
