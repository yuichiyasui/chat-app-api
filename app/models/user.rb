class User < ApplicationRecord
    validates :uuid, uniqueness: true
    validates :uuid, presence: true
    validates :name, length: { maximum: 10 }
    validates :name, presence: true
end
