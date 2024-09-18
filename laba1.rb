OPTIONS = ['rock', 'scissors', 'paper']

loop do

  puts "Ваш вибір (rock, scissors, paper)? або 'exit' для завершення:"
  player_choice = gets.chomp.downcase 

  exit if player_choice == 'exit'

  if OPTIONS.include?(player_choice)

    computer_choice = OPTIONS.sample    
    puts "Ваш вибір: #{player_choice}, Комп'ютер вибрав: #{computer_choice}"

    case [player_choice, computer_choice]
    when ['rock', 'scissors'], ['scissors', 'paper'], ['paper', 'rock']
      puts 'Ви виграли!' 
    when [computer_choice, player_choice]
      puts 'Нічия!'
    else
      puts 'Комп\'ютер виграв!' 
    end

    puts '-----------------------------' 
  else
 
    puts "Невірний вибір, спробуйте знову." 
    next # Перехід до наступної ітерації циклу
  end
end
