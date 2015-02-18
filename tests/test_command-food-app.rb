require "./lib/command-food-app.rb"
require "./lib/command-food-app/parser.rb"
require "test/unit"

class TestCommandFoodApp < Test::Unit::TestCase

	def test_parse_files_exist
		files = Hash[
			[
				'mod' => 'erberts-and-gerberts'
				'type' => 'config'
			],
			[
				'mod' => 'erberts-and-gerberts'
				'type' => 'menu'
			]
		]

		files.each do |file|
			assert(File.exist?("#{file['mod']}/#{file['type']}.json"), "#{file['mod']}/#{file['type']}.json} does not exist")
			parser = Parser.new(file['mod'], file['type'])
	    	result = parser.parse()

	    	assert(result.kind_of?(Hash), "parse() did not yield hash")
		end
  	end

end