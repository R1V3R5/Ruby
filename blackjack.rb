cards_in_hand = []
dealer_cards_in_hand = []
@gameon = true

def get_card
  rand(1..11)
end


  cards_in_hand.push(get_card)
  cards_in_hand.push(get_card)

while @gameon == true
  @user_card_values = 0
  puts "You have the following cards: "
  cards_in_hand.each do |card|
    puts card
    @user_card_values += card
  end
  puts "Card values: #{@user_card_values}"
  puts "Do you want to hit or stay (h to hit, s to stay)?"
  hit_or_stay = gets.chomp
  if hit_or_stay == 'h'
    new_card = get_card
    cards_in_hand.push(new_card)
    puts "This is your new card #{new_card}"
    @user_card_values += new_card
    puts "Your total is now: #{@user_card_values} "
  end

  if hit_or_stay == 's'
    @gameon = false
  end

end

@gameon = true

  dealer_cards_in_hand.push(get_card)
  dealer_cards_in_hand.push(get_card)

while @gameon == true
  @dealer_card_values = 0
  puts "You have the following cards: "
  dealer_cards_in_hand.each do |card|
    puts card
    @dealer_card_values += card
  end
  puts "Card values: #{@dealer_card_values}"
  if @dealer_card_values < 17
    new_card = get_card
    dealer_cards_in_hand.push(new_card)
    puts "This is the dealers' new card #{new_card}"
    @dealer_card_values += new_card
    puts "Dealer total is now: #{@dealer_card_values} "
  end
if @dealer_card_values >= 17
    @gameon = false
  end
end

@gameon = true
  
  while @gameon == true
  if @user_card_values > 21
     @gameon = false
    puts "BUST"
  elsif @user_card_values == 21
    @gameon = false
    puts "YOU WIN"
  elsif @user_card_values < @dealer_card_values
    @gameon = false
    puts "DEALER WINS"
  elsif @dealer_card_values > 21
    @gameon = false
    puts "Dealer bust. You win!"
  end
end




