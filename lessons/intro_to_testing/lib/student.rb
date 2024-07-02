class Student
    attr_reader :name,
                :cookies

    def initialize(name)
        if name.is_a?(String)
           @name = name
        else
            @name = "Default Name Assigned"
        end
        @cookies = []
    end

    def add_cookie(cookie_type)
        cookies.push(cookie_type)
    end


    
end