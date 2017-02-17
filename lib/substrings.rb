def substrings(words_string, substrings_array)

	output_hash = {}

	substrings_array.each do |substring|

		words_string.downcase.scan(/#{substring}/) do |match|

			if output_hash.include?(match) then
				output_hash[match] = output_hash[match] + 1
			else
				output_hash[match] = 1
			end

		end

	end

	puts output_hash

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
