FactoryGirl.define do
  factory 'project' do
    name { Faker::Lorem.words(2) }
    what { Faker::Lorem.sentence }
    who { Faker::Name.name }
    where { Faker::Address.city }
    # when { Faker::Lorem.sentence }
    how { Faker::Lorem.sentence }
  end
end

