def shipping_ground(weight):
  if weight <= 2:
    price_pound = 1.50
  elif weight <= 6:
    price_pound = 3.00
  elif weight <= 10:
    price_pound = 4.00
  else:
    price_pound = 4.75
  return (weight * price_pound) + 20.00
print(shipping_ground(8.4))

shipping_ground_premium = 125.00

def shipping_dron(weight):
  if weight <= 2:
    price_pound = 4.50
  elif weight <= 6:
    price_pound = 9.00
  elif weight <= 10:
    price_pound = 12.00
  else:
    price_pound = 14.25
  return (weight * price_pound)
print(shipping_dron(1.5))
  
  
def shipping_cheapest(weight):
  ground = shipping_ground(weight)
  dron = shipping_dron(weight)
  premium = shipping_ground_premium(weight)
  if ground < dron and ground < premium:
    return ground
  elif dron < ground and dron < premium:
    return shipping_dron
  else:
    return premium
  
  cheapest = shipping_cheapest(4.8)
  print("cheapest: ", cheapest)
  
  
  