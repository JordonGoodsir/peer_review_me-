 

require "faker" 

class Identity  

    @@name =[] 
    @@location = []
    
    class << self 
        def get_identity 
            @@name.push(Faker::Name.name)  
        end  
    
        def get_location 
            @@location.push(Faker::Address.full_address)  
        end
    end
end  


class Text < Identity 

def initialize  
    super
end  

def get_identity_text 
    p "Do you really want to get a new identity? (yes or no?)"  
    answer = gets.chomp.downcase 
    
    sleep 1   

    if answer != "yes"  
        p "come back to me when you're ready" 
        sleep 1
        exit 
    end 

    Identity.get_identity 
    Identity.get_location  
    
    p "ok ... ok, this is a big step"  
    sleep 2 
    p "Your new name is: #{@@name[0]}" 
    sleep 2 
    p "Your new address is: #{@@location[0]}, #{@@location[1]} , #{@@location[2]}" 
    sleep 2 
    p "One more thing before you go, I wouldent use that #{Faker::Device.model_name} of yours, governments on to you. Good Luck. "
end

end 

l = Text.new  

l.get_identity_text 

