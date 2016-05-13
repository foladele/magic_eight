# User inputs Question
@answer_arr = ["Yes", "No", "Maybe", "Sometimes", "In 10 years"]
@user_arr = @answer_arr.clone

def menu

	puts "1. Type a question to get an answer, or type QUIT to end the program."
	puts "2. Enter an answer"
	puts "3. All answers"
	puts "4. Reset"


	user_input = gets.strip

	if user_input != "QUIT"	
		case user_input
			when "1"
				puts "Enter Question: "
				quest = gets.strip
				puts "The Magic Eight Ball says: #{@answer_arr.sample}"
			when "2"
				puts "Enter answer of your choice"
				ans = gets.strip
				if @user_arr.include?(ans) == false
					puts "you entered: #{ans}"
					@user_arr << ans 
				else
					puts "answer already exists"
				end
			when "3"
				@user_arr.each {|all_ans| puts all_ans}
			when "4"
				@user_arr = @answer_arr.clone
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
