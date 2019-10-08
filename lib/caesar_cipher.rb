def code_one_letter(letter, n)

	# On commence par changer la lettre entrée en argument en son code ASCII
	letter_ascii_code = letter.ord

	# Tableau des numéros ASCII de tous les symboles
	symbols_ascii_code_array = (32..64).to_a + (91..96).to_a + (122..126).to_a
	# Tableau des numéros ASCII de toutes les minuscules
	lowercase_ascii_code_array = (97..122).to_a
	# Tableau des numéros ASCII de toutes les majuscules
	uppercase_ascii_code_array = (65..90).to_a
	puts "coucou"
	

	# Si le code de la lettre est compris dans [32, 64], [91, 96] ou [122, 126] (i.e. si ce sont des symboles)
	# ou si letter_ascii_code est 90 (si la lettre est Z),
	# ou si letter_ascii_code est 122 (si la lettre est z),
	# ne rien changer.
	if symbols_ascii_code_array.include?(letter_ascii_code) || letter_ascii_code == 90 || letter_ascii_code == 122
		# ne rien changer
		letter_ascii_code = letter_ascii_code
		puts "va crever"

	# Sinon, si la lettre est une minuscule
	elsif lowercase_ascii_code_array.include?(letter_ascii_code)
		# On décale le code de n
		new_letter_ascii_code = ((letter_ascii_code + n) % 90) + 64
		puts "letter = #{letter}"
		puts "letter_ascii_code = #{letter_ascii_code}"
		puts "n = #{n}"
		puts "new_letter_ascii_code = #{new_letter_ascii_code}"
		puts "(letter_ascii_code + #{n}) = #{letter_ascii_code + n}"
		puts "--------------- 1111"
		puts "(letter_ascii_code + #{n}) % 90 = #{(letter_ascii_code + n) % 90}"
		puts "--------------- 2222"
		puts ((letter_ascii_code + n) % 90) + 64
		puts new_letter_ascii_code.class

		# On transforme ce nouveau code ASCII en la lettre correspondante
		new_letter = new_letter_ascii_code.chr 
		# On retourne la lettre correspondante au nouveau code ASCII
		return new_letter
	end
end



def code_one_word(word, n)

	# On définit le tableau qui contiendra les nouvelles lettres après décalage
	new_letter_array = []
	# On transforme le mot en chacune de ses lettres. split renvoie un tableau contenant les lettres.
	letters_array = word.split("")

	# On parcourt toutes les lettres du tableau
	letters_array.each.with_index do |letter, i|

		# On commence par changer la lettre entrée en argument en son code ASCII
		letter_ascii_code = letter.ord
		# On décale le code de n
		new_letter_ascii_code = letter_ascii_code + n
		# On transforme ce nouveau code ASCII en la lettre correspondante
		new_letter = new_letter_ascii_code.chr

		# On met cette nouvelle lettre dans un nouveau tableau?
		# On retourne la lettre correspondante au nouveau code ASCII
		new_letter_array += [new_letter]
	end

	# On forme le nouveau mot après décalage des lettres.
	new_word = new_letter_array.join("")

	# On retourne ce nouveau mot
	return new_word
end




# comment faire pour que si lettre + n > z, on revient à a
# en ASCII : code ASCII lettre + n > 90, code 
# faire modulo 90!
# faire nouveau code ASCII = (code ASCII lettre + n) % 90

def caesar_cipher(string, n)




end



#puts code_one_word("abc", 1)
puts code_one_letter("H", 3)
puts code_one_letter("Y", 2)
puts code_one_letter("Z", 2)
puts code_one_letter("A", 0)
puts code_one_letter("Z", 0)
#puts code_one_letter(" ")
#puts code_one_letter("X")