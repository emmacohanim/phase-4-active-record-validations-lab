class Author < ApplicationRecord
    validates :name, presence: true
    validates :phone_number, length: { is: 10 }
    validates :name.downcase, uniqueness: true
end


