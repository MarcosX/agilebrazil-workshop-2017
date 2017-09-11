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
    if moedas.include?(dinheiro.moeda) && moedas.include?(moeda_conversao)
      valor_cotacao = @@cotacao[moeda_base][moeda_conversao]
      preco = (preco * valor_cotacao)/100
    end
    raise ArgumentError.new("Não existe cotação de #{dinheiro.moeda} para #{moeda_conversao}")
  end
end
