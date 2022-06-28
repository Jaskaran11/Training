namespace :active_record_counter do
  desc "Display the count of book model"
  task books_count: :environment do
    puts "Books Count = #{Book.count}"
  end

  desc "Display the count of author model"
  task authors_count: :environment do
    puts "Authors Count = #{Author.count}"
  end

end
