# User inputs Question
@answer_arr = ["Yes", "No", "Maybe", "Sometimes", "In 10 years"]

def menu

	puts "1. Type a question to get an answer, or type QUIT to end the program."
	puts "2. Enter an answer"


	user_input = gets.strip

	if user_input != "QUIT"	
		if user_input == "1"
			puts "Enter Question: "
			quest = gets.strip
			puts "The Magic Eight Ball says: #{@answer_arr.sample}"
		elsif user_input == "2"
			puts "Enter answer of your choice"
			ans = gets.strip
			puts "you entered: #{ans}"
			@answer_arr << ans 
		else
			puts "#{user_input} is not a valid option. Enter correct answer"
			menu
		end

	else

		puts "Thanks for asking the Magic Eight Ball. Please play again"
		exit(0)
	end
end




while true

	menu

end
