class Group
    attr_accessor :seniorParticipants, :ageParticipants, :participants
    
    def initialize (participants = [], ageParticipants = [], seniorParticipants = [])
        @participants, @ageParticipants, @seniorParticipants = participants, ageParticipants, seniorParticipants
    end
    
    def randomizeGroups
        groupRandomizer = Random.new
        
        newParticipants = Array.new
        numberOfParticipants = @participants.size
        while newParticipants.size < numberOfParticipants / 2
            participant = @participants[groupRandomizer.rand(0...numberOfParticipants)]
            if !newParticipants.include?(participant)
                newParticipants << participant
            end
        end
        
        newAges = []
        numberOfParticipants = @ageParticipants.size
        while newAges.size < numberOfParticipants / 2
            participant = @ageParticipants[groupRandomizer.rand(0...numberOfParticipants)]
            if !newAges.include?(participant)
                newAges << participant
            end
        end
        
        newSeniors = []
        numberOfParticipants = @seniorParticipants.size
        while newSeniors.size < numberOfParticipants / 2
            participant = @seniorParticipants[groupRandomizer.rand(0...numberOfParticipants)]
            if !newSeniors.include?(participant)
                newSeniors << participant
            end
        end
        
        group1 = Group.new(newParticipants, newAges, newSeniors)
        group2 = Group.new(@participants - newParticipants, @ageParticipants - newAges, @seniorParticipants - newSeniors)
        
        return [group1, group2]
    end
    
    def to_s
        group = ''
        @seniorParticipants.each { |participant| group += participant + "\n" }
        @ageParticipants.each { |participant| group += participant + "\n" }
        @participants.each { |participant| group += participant + "\n" }
        
        return group
    end
end
