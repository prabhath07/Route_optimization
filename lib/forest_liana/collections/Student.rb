module Forest 
    class Student
    include ForestLiana::Collection
        collection :Student
        action 'add',type: 'global' , fields: [{
            field: 'input',
            description: 'Upload the excel sheet of sutdents and routes',
            type: 'File',
            is_required: false
          }]

    end



end
