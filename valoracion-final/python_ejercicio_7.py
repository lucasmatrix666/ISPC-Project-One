import math

historial3 = (9530, 4120, 4580, 1500, 890, 7516, 426)
mascotName = "Lennon"
sumExpenses = 0

for x in historial3:
    sumExpenses += x

average = sumExpenses / len(historial3)

print("Promedio de gastos Lennon: " + str(math.floor(average)))

if average > 4500:
    print("Se ha excedido del gasto promedio para su mascota")
