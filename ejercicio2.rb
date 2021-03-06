module Formula
  def perimetro
    if self.class == Rectangulo
      puts "Rectangulo tiene un perimetro de #{@largo*2 + @ancho*2}"
    elsif self.class == Cuadrado
      puts "Cuadrado tiene un perimetro de #{@lado*4}"
    end
  end

  def area
    if self.class == Rectangulo
      puts "Rectangulo tiene un área de #{@largo*@ancho}"
    elsif self.class == Cuadrado
      puts "Cuadrado tiene un área de #{@lado**2}"
    end
  end
end

class Rectangulo
  attr_reader :base, :altura
  include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    print "#{largo} y #{ancho}"
  end
end

class Cuadrado
  attr_reader :lado
  include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
    print "#{lado}"
  end
end

puts Rectangulo.new(20, 30).perimetro
puts Rectangulo.new(20, 30).area
puts Cuadrado.new(40).perimetro
puts Cuadrado.new(40).area
