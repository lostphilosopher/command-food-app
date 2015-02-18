require 'json'

# Takes a restaurant module and file path conducts file/json read operations.
class Parser

    def initialize(mod, path)
    	  @mod = mod
        @path = path
    end

  	attr_reader :mod
  	attr_reader :path

    # Convert a json file into a Ruby hash
  	def parse()
        if !File.exist?("./lib/command-food-app/#{@mod}/#{@path}")
            puts "Error: ./lib/command-food-app/#{@mod}/#{@path} does not exist"
            return {}
        end

    		file = File.open("./lib/command-food-app/#{@mod}/#{@path}", "rb")
		    contents = file.read
		    file.close
		    contents = JSON.parse(contents)

	      return contents
    end

end