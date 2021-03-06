class CotacaoUtil

  @@cotacao = {
    'BRL' => {'BRL' => 100, 'USD' => 32, 'EUR' => 26},
    'USD' => {'BRL' => 309, 'USD' => 100, 'EUR' => 83},
    'EUR' => {'BRL' => 373, 'USD' => 120, 'EUR' => 100}
  }

  def self.moedas
    @@cotacao.keys
  end

  def self.converter(preco, moeda_base, moeda_conversao)
    if moeda_existe?(moeda_base) && moeda_existe?(moeda_conversao)
      valor_cotacao = @@cotacao[moeda_base][moeda_conversao]
      return (preco * valor_cotacao)/100
    end
    raise ArgumentError.new("Não existe cotação de #{moeda_base} para #{moeda_conversao}")
  end

  def self.moeda_existe?(moeda)
    moedas.include?(moeda)
  end
end
