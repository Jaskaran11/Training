namespace :custom do
  desc 'Hello there, welcome to this section.'

  task greet_the_user: :environment do
    puts 'Hello User! Welcome to the rake world!'
  end
end
