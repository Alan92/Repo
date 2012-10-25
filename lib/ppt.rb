
class Juego
  attr_accessor :tiradas, :derrota, :humano, :maquina, :resultado, :resultados
  attr_reader :tiradas, :derrota, :humano, :maquina, :resultado, :resultados
  def initialize(tiradas, derrota, resultados, humano, maquina, resultado)
    @tiradas = tiradas
    @derrota = derrota
    @resultados = resultados
    @humano = humano
    @maquina = maquina
    @resultado = resultado
  end
  def obtener_humano(cadena)
    @humano = cadena.to_sym
  end
  def obtener_maquina
    @maquina = @tiradas.sample
  end
  def jugar
    obtener_maquina

    if @humano == @maquina
      @resultado = @resultados[2]
    elsif @humano == @derrota[@maquina]				#si la opcion escogida es igual a la clave de la opcion del ordenador
      @resultado = @resultados[0]
    else
      @resultado = @resultados[1]
   end
 end
  
end

