List = [
  {"Peanut Butter", 3, 1.50},
  {"Jelly", 5, 2},
  {"Donut", 1, 0.75}
].

[{ Product, Quantity * Price } || { Product, Quantity, Price } <- List].