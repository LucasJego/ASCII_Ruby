def is_multiple_of_3_or_5?(current_number)

	if current_number % 3 == 0 || current_number % 5 == 0
		then return true
	else
		return false
	end

end



def sum_of_3_or_5_multiples(final_number)

	# Si on ne rentre pas un entier positif pour final_number, le programme renvoie "Nul! Rentrez un entier positif."
	while final_number.class != Integer || final_number < 0
		return "Nul! Rentrez un entier positif."
	end

	# Si final_number est bien un entier positif,
	# On initialise la somme des entiers multiples de 3 ou 5 à 0
	sum = 0
	n = 0

	# On parcourt tous les entiers allant de 0 à final_number exclu.
	#for n in (0..final_number) do
	while n < final_number do

		# Si la fonction is_multiple_of_3_or_5? renvoie true (i.e. si n est un multiple de 3 ou de 5),
		if is_multiple_of_3_or_5?(n) == true
			# n est rajouté à la variable sum.
			sum += n
			#n += 1 -> Si on place l'incrémentation de n ici, le programme plante		
		end

		n += 1
	end

	# On retourne la variable contenant la somme
	return sum

end



puts sum_of_3_or_5_multiples(5)
puts sum_of_3_or_5_multiples(10)
print sum_of_3_or_5_multiples(11)