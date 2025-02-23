# lib/tasks/seed.rake
namespace :seed do
  desc "Run seeds"
  task run: :environment do
    Rails.application.load_seed
    puts "Seeding completed!"
  end
end
