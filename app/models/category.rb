class Category < ApplicationRecord
    validates :name, length: {minimum: 1 }, uniqueness: true
end
