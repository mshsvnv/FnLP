DOMAINS
	surname, phone = symbol
	city, street = symbol
	house, flat = integer
	address = addr(city, street, house, flat)
	
	mark, color = symbol
	cost = integer
	car_number = symbol
	
PREDICATES
	person(surname, phone, address)
	car(surname, mark, color, cost, car_number)
	man_car(mark, color, surname, city, phone)

CLAUSES
	person("Ivanov", "8916-666-77-66", addr("Moscow", "Mira", 10, 2)).
	person("Petrov", "8916-231-88-66", addr("Vologda", "Lenina", 1, 2)).
	person("Petrov", "8916-985-34-16", addr("Sochi", "Pobedy", 32, 2)).
	person("Sidorov", "8916-616-97-81", addr("Armavir", "Minskaya", 7, 2)).
	person("Fedorov", "8916-959-77-12", addr("Lipetsck", "Naberegnaya", 22, 2)).
		
	car("Fedorov", "bmw", "black", 300000, "M704XC790").
	car("Ivanov", "cherry", "white", 200000, "H982FN846").   
  	car("Petrov", "mercedes", "grey", 250000, "P777AA774").   
  	car("Sidorov", "audi", "red", 230000, "S042GB562").   
  	car("Fedorov", "bmw", "white", 400000, "F001VS148").     
  
	man_car(Mark, Color, Surname, City, Phone) :-       
    		car(Surname, Mark, Color, _, _),       
    		person(Surname, Phone, addr(City, _, _, _)). 
GOAL
	person("Ivanov", _, _).