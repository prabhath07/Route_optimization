module Forest 
    class Route 
    include ForestLiana::Collection
    
        collection :Route
        action 'create' , type: 'global' 
    end
end
