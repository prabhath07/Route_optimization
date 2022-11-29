module Helper
    def add_route(status , geo_key,path)
        puts "coming here"
        r = Route.new 
        b = Bus.new 
        b.geo_key = geo_key
        b.path = path 
        r.status = "Active"
        r.geo_key="generated"
        r.path = "generated"
        b.save 
        r.bus_id = b.id 
        r.save 
    end
    def delete 
        Route.all.map  {|r| r.status = "Deactivated"}
        Bus.find_each(&:destroy)
    end
    def create_student(name,lat,lon)
        s = Student.new
        s.name = name
        s.latitude = lat 
        s.longitude = lon 
        s.save 
    end

end 