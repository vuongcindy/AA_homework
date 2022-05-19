class House < ApplicationRecord
    validates :address, presence: true
    has_many(
        :residents,
        class_name: 'Person',
        foreign_key: :house_id,
        primary_key: :id
    )

    has_many :people, through: :residents, source: :person
end