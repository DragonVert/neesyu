class Event < ApplicationRecord

    def description_courte
      return self.description[0..20]+" ..."
    end
end
