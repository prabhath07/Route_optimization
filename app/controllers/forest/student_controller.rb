require_relative '../helper.rb'

module Forest 
    class StudentController < ForestLiana::SmartActionsController
        include Helper
        
        def add_students
            puts 'coming here'


            render json: {success:"Well done gatram sai"}
        end
        def change 
            attrs = params["data"]["attributes"]["values"]
            excel_file = attrs["input"]
            s = Base64.decode64(excel_file.split("base64,")[1])
            l = s.split("\r\n")
            headers = l[0]
            headers = headers.split(",")
            body = l[1,l.length]
            k=[]
            for i in body 
                k<< CSV.parse(i).map {|a| Hash[headers.zip(a)]}[0]
            end

            puts k
            for i in k 
                create_student(i["Name"],i["Latitude"],i["Longitude"])
            end

                render status: 200 ,json:{html:"<p>Hello world</p>"}
        end

    end
end

