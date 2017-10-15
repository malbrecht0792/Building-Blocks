require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index 
end


def caesar_cipher(text, num)
	
	#Creating an alphabet array with lowercase and uppercase letters
	lowercase_alphabet_array = ("a".."z").to_a
	uppercase_alphabet_array = ("A".."Z").to_a
	alphabet_array = Array.new
	count = 0
	lowercase_alphabet_array.each do |letter|
		alphabet_array << letter
		alphabet_array << uppercase_alphabet_array[count]
		count += 1
	end
	#Splitting the text into words
	words = text.split(" ")
	#Iterating through each word to change the letters by 'num'
	words.map! do |word|
		#Defining a new_word
		new_word = ""
		word.split("").each do |letter|
			#Finding the index of the letter in the alphabet_array
			current_index = alphabet_array.index(letter)
			#Changing the index by num
			if current_index + num*2 > 52 then
				new_index = current_index + num*2 - 52
			else
				new_index = current_index + num*2
			end
			#letter = alphabet_array[new_index]
			new_word = new_word + alphabet_array[new_index] 
		end
		word = new_word
	end

	words.join(" ")

end

