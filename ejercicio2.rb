nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]


nombres_largos = nombres.select { |e| e.length > 5 }
print nombres_largos

minuscula = nombres.map { |e| e.downcase  }
print minuscula

letras = nombres.map { |e| e = e.length  }
print letras

# vocales = nombres.map { |e| e = e.sub   }
# print vocales
