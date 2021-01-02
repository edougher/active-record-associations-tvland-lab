class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters

    def actors_list
        self.characters.map do |character|
            "#{character.actor.first_name} #{character.actor.last_name}"
        end
    end

    # suggested solution
    #self.actors.map{|actor| actor.full_name}
end