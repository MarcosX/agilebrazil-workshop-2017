class MinhasSeries

  def initialize
    @@series_assistindo ||= []
    @@series_assistidas ||= []
    @@series_assistir   ||= []
  end

  def adicionar_serie(status, serie)
    lista = lista_de_series(status)
    return if status == 'assistindo' && @@series_assistindo.size >= 2
    if !lista.include?(serie)
      lista.push(serie)
    end
  end

  def lista_de_series(status)
    case status
    when 'assistindo'
      @@series_assistindo
    when 'assistida'
      @@series_assistidas
    when 'assistir'
      @@series_assistir
    end
  end

  def series_assistindo
    @@series_assistindo
  end

  def series_assistidas
    @@series_assistidas
  end

  def series_assistir
    @@series_assistir
  end

  def limpar_series
    @@series_assistindo = []
    @@series_assistidas = []
    @@series_assistir   = []
  end
end
