class Camper < ApplicationRecord
    has_many :signups, dependent: :destroy
    has_many :activities, through: :signups, dependent: :destroy
    
    validates :name, presence: true
    validates :age, inclusion: {in: 8..18}
end
