# frozen_string_literal: true

# DatabaseCleaner setup
RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
    DatabaseCleaner.strategy = :trsansaction
  end

  config.after do
    DatabaseCleaner.cleaning do
      example.run
    end
  end
end
