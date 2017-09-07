class MinhasSeries

  attr_reader :series_assistir, :series_assistidas, :series_assistindo

  def initialize
    @series_assistindo ||= []
    @series_assistidas ||= []
    @series_assistir ||= []
  end

  def adicionar_serie(status, serie)
    case status
    when 'assistindo'
      if !@series_assistindo.include?(serie)
        if @series_assistindo.size < 2
          @series_assistindo.push(serie)
        end
      end
    when 'assistida'
      if !@series_assistindo.include?(serie)
        @series_assistidas.push(serie)
      end
    when 'assistir'
      if !@series_assistir.include?(serie)
        @series_assistir.push(serie)
      end
    end
  end
end
