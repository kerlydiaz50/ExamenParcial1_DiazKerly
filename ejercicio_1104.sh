# Resolución del ejercicio 1.10.4 de Buzzard et al (2016)

# - Para imprimir el nombre de la columna correspondiente, primero se debe
#   extraer el nombre de la columna haciendo uso de cut, en este caso para
#   la columna 8

cut -d ',' -f 8 ../ExamenParcial1_DiazKerly/Buzzard2015_data.csv | head -n 1

# - Para obtener el número de valores distintos en la columna, se deben
#   ordenar (sort) y para identificar vallores unicos se necesita de uniq
cut -d ',' -f 8 ../ExamenParcial1_DiazKerly/Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l

# - Para la obtención del valor minimo y maximo, se puede usar sort (ordenar)
#   y para el valor minimo usar head y maximo usar tail

# Valor minimo
cut -d ',' -f 8 ../ExamenParcial1_DiazKerly/Buzzard2015_data.csv | tail -n +2 | sort -n | head -n 1

# Valor maximo
cut -d ',' -f 8 ../ExamenParcial1_DiazKerly/Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1
