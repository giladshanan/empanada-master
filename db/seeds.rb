User.destroy_all
EmpanadaType.destroy_all
Order.destroy_all
OrderedEmpanada.destroy_all

alyssa = User.create!(name: "Alyssa", username: "alyssa", email: "alyssa.email", password: "123456")
graham = User.create!(name: "Graham", username: "graham", email: "graham.email", password: "123456")
avner = User.create!(name: "Avner", username: "avner", email: "avner.email", password: "123456")

EmpanadaType.create(name: "Beef")
EmpanadaType.create(name: "Malbec Beef")
EmpanadaType.create(name: "Spinach")
EmpanadaType.create(name: "Corn")
EmpanadaType.create(name: "Nutella")

order_one = Order.create(eater: alyssa)
order_one.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: (rand(5) + 1), quantity: (rand(3) + 1))
order_one.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: (rand(5) + 1), quantity: (rand(3) + 1))
order_one.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: (rand(5) + 1), quantity: (rand(3) + 1))

order_two = Order.create(eater: graham)
order_two.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: (rand(5) + 1), quantity: (rand(3) + 1))
order_two.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: (rand(5) + 1), quantity: (rand(3) + 1))
order_two.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: (rand(5) + 1), quantity: (rand(3) + 1))

order_three = Order.create(eater: avner)
order_three.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: (rand(5) + 1), quantity: (rand(3) + 1))
order_three.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: (rand(5) + 1), quantity: (rand(3) + 1))
order_three.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: (rand(5) + 1), quantity: (rand(3) + 1))

order_four = Order.create(eater: avner)
order_four.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: (rand(5) + 1), quantity: (rand(3) + 1))
order_four.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: (rand(5) + 1), quantity: (rand(3) + 1))
order_four.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: (rand(5) + 1), quantity: (rand(3) + 1))
order_four.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: (rand(5) + 1), quantity: (rand(3) + 1))
order_four.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: (rand(5) + 1), quantity: (rand(3) + 1))
