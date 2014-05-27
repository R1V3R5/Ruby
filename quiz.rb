
user_answer = []

puts "Please choose A, B, C and press enter for next question"

questions = [
	{
		question: "What does the abbriviation TIY stand for?",
		answer: "B",
		answer_choices: [
			   "A - Tips Included Yo'",
			   "B - The Iron Yard",
			   "C - Turn It Yellow",
		]
	},
	{
		question: "Which TIY location are is this for?",
		answer: "A",
		answer_choices: [
			   "A - Charleston, SC",
			   "B - Atlanta, GA",
			   "C - Houston, TX",
		]
	},
	{
		question: "What engineering framwork are we studying?",
		answer: "A",
		answer_choices: [
			   "A - Ruby on Rails",
			   "B - Front - End Development",
			   "C - Nap - Time",
		]
	},
	{
		question: "What year is it?",
		answer: "C",
		answer_choices: [
			   "A - 2012",
			   "B - 2013",
			   "C - 2014",
		]
	},
	{
		question: "We are, we are?",
		answer: "B",
		answer_choices: [
			   "A - Rock Stars",
			   "B - The youth of the nation",
			   "C - Aliens",
		]
	},
	{
		question: "I like...?",
		answer: "A",
		answer_choices: [
			   "A - Depends",
			   "B - Nothing",
			   "C - Everything",
		]
	},
	{
		question: "1+1=?",
		answer: "C",
		answer_choices: [
			   "A - 1",
			   "B - 3",
			   "C - 2",
		]
	},
	{
		question: "This homework assignment is for?",
		answer: "A",
		answer_choices: [
			   "A - Hashes",
			   "B - Dashes",
			   "C - Smashes",
		]
	},
	{
		question: "What planet are we on?",
		answer: "B",
		answer_choices: [
			   "A - Mars",
			   "B - Earth",
			   "C - U.S.",
		]
	},
	{
		question: "A, B, ?",
		answer: "C",
		answer_choices: [
			   "A - A",
			   "B - B",
			   "C - C",
		]
	}
]

questions.each do | question |
	puts question[:question]
	question[:answer_choices].each do | answer_choice | 
	puts answer_choice
	end

	answer = gets.chomp.upcase
	if answer == question[:answer]
		user_answer << answer
		puts "Correct"
	else 
		puts "Wrong"
	end
	system "clear"
end

puts "You got #{user_answer.length} out of 10 correct!"
grade = (user_answer.length.to_f/10)*100

puts "%#{grade}"
if grade == 70.0
	puts "You passed...barely"
elsif grade == 80.0
	puts "You passed!"
elsif grade >= 90.0
	puts "NAILED IT!"
else grade < 70.0
	puts "FAIL!"
end

