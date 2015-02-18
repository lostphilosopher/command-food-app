require 'json'

# Order sandwiches
class Order
    def initialize(order, menu)
        @order = order
        @menu = menu
    end

    # Return an array of sandwiches to order
    def matchSandwichesToMenu()
        if !order['sandwiches'].nil?

            sandwiches = []

            order['sandwiches'].each do |item|
                puts "Ordering: #{item['name']}"

                validOrder = true

                case item['name']
                    when "apollo"
                        sandwiches << menu['sandwiches']['apollo']
                    when "pompeii"
                        sandwiches << menu['sandwiches']['pompeii']
                    when "spartan"
                        sandwiches << menu['sandwiches']['spartan']
                    when "erupter"
                        sandwiches << menu['sandwiches']['erupter']
                    when "quatro"
                        sandwiches << menu['sandwiches']['quatro']
                    when "titan"
                        sandwiches << menu['sandwiches']['titan']
                    when "narmer"
                        sandwiches << menu['sandwiches']['narmer']
                    when "tullius"
                        sandwiches << menu['sandwiches']['tullius']
                    when "flash"
                        sandwiches << menu['sandwiches']['flash']
                    when "shortcake"
                        sandwiches << menu['sandwiches']['shortcake']
                    when "girf"
                        sandwiches << menu['sandwiches']['girf']
                    when "comet candy"
                        sandwiches << menu['sandwiches']['comet candy']
                    when "giza"
                        sandwiches << menu['sandwiches']['giza']
                    when "boney billy"
                        sandwiches << menu['sandwiches']['boney billy']
                    when "comet morehouse"
                        sandwiches << menu['sandwiches']['comet morehouse']
                    when "jacob bluefinger"
                        sandwiches << menu['sandwiches']['jacob bluefinger']
                    when "halleys comet"
                        sandwiches << menu['sandwiches']['halleys comet']
                    when "tappy"
                        sandwiches << menu['sandwiches']['tappy']
                    when "bornk"
                        sandwiches << menu['sandwiches']['bornk']
                    when "pudder"
                        sandwiches << menu['sandwiches']['pudder']
                    else
                        validOrder = false
                        puts "NAS: #{item['name']} is not a sandwhich"
                end

                # If the order is valud, place it
                if validOrder
                    # Sandwich options
                    if  !item['options'].nil? && (item['options'].include? 'no mayo')
                        @b.checkbox(:id => 'box1-0').set            
                    end
                    if item['bread'] == "wheat"
                        @b.select_list(:id => 'item_options[]').select_value('099a429f2f463b6a0078d6cc9c7844bd')
                    else 
                        @b.select_list(:id => 'item_options[]').select_value('b6c1e8343d2198110a6de554fba7bac5')
                    end

                    if !item['label'].nil?
                        @b.text_field(:name => 'label').set item['label']
                    end

                    @b.button(:id => 'AddToPlate').click 
                end 
            end
        end    

end