require 'json'

class Parser

    def initialize(mod, type)
    	  @mod = mod
        @type = type
    end

  	attr_reader :mod
  	attr_reader :type

  	def parse()
        if !File.exist?('./lib/command-food-app/#{@mod}/#{@type}.json')
            puts "Error: ./lib/command-food-app/#{@mod}/#{@type}.json does not exist"
            return {}
        end

    		file = File.open("./lib/command-food-app/#{@mod}/#{@type}.json", "rb")
		    contents = file.read
		    file.close
		    contents = JSON.parse(contents)

	      return contents
    end

end