require "./lib/command-food-app.rb"
require "./lib/command-food-app/parser.rb"
require "test/unit"

class TestCommandFoodApp < Test::Unit::TestCase

    def test_required_ignored_files_exist
    	  assert(File.exist?("./lib/command-food-app/erberts-and-gerberts/config.json"), "Required .gitignored config.json file does not exist.")
    		assert(File.exist?("./lib/command-food-app/erberts-and-gerberts/orders/default.json"), "Required .gitignored orders/default.json file does not exist.")
    		assert(File.exist?("./lib/command-food-app/erberts-and-gerberts/orders/example.json"), "Required test file orders/example.json does not exist.")
    end

    def test_parser_returns_hash
    	  parser = Parser.new("erberts-and-gerberts", "orders/example.json")
      	result = parser.parse()

      	assert(result.kind_of?(Hash), "parse() did not yield hash")
      	assert((result['contact'] == "Acme Co"), "result['contact'] is undefined, assuming json file empty or malformed.")
    end
end