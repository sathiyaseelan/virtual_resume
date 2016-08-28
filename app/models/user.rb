class User
    attr_accessor :name , :email, :brand_statement, :summary, :experiences,
                     :skills, :certificates, :recommendations
    
    def initialize(name, email)
        @name = name
        @email = email
    end
end