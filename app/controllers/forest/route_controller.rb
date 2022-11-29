require_relative '../helper.rb'
module Forest 
    class RouteController < ForestLiana::SmartActionsController
    include Helper
      def calculate 
            values = {"jobs":[{"id":1,"service":300,"amount":[1],"location":[1.9,48.701],"skills":[1],"time_windows":[[32400,36000]]},{"id":2,"service":300,"amount":[1],"location":[2.03655,48.61128],"skills":[1]},{"id":3,"service":300,"amount":[1],"location":[2.39719,49.07611],"skills":[2]},{"id":4,"service":300,"amount":[1],"location":[2.41808,49.22619],"skills":[2]},{"id":5,"service":300,"amount":[1],"location":[2.28325,48.5958],"skills":[14]},{"id":6,"service":300,"amount":[1],"location":[2.89357,48.90736],"skills":[14]}],"vehicles":[{"id":1,"profile":"driving-car","start":[2.35044,48.71764],"end":[2.35044,48.71764],"capacity":[4],"skills":[1,14],"time_window":[28800,43200]},{"id":2,"profile":"driving-car","start":[2.35044,48.71764],"end":[2.35044,48.71764],"capacity":[4],"skills":[2,14],"time_window":[28800,43200]}],"options": {
                "g": true
              }}

            headers = {
                "accept" => "application/json, application/geo+json, application/gpx+xml, img/png; charset=utf-8",
                "Authorization" => "5b3ce3597851110001cf62481ae33b88969c4a7292229532e4898196",
                "Content-Type" => "application/json; charset=utf-8"
            }
            
            
            con = Faraday.new(url: "https://api.openrouteservice.org/optimization") do |f|
                f.response :json 
            end

            res = con.post do |req|
                req.headers = headers
                req.body = values.to_json
            end
            # if (res.status == 200)
            #     delete                
            # end
            for i in (0..res.body["routes"].length)
            add_route("active",res.body["routes"][i]["geometry"],res.body["routes"][i]["steps"])
            puts res.body["routes"][i]["geometry"].class
            end
            
        end


    end
end

