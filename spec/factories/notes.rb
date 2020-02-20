FactoryBot.define do
  factory :note do
    # stand = FactoryBot.create(stand_up)
    employee { "MyString" }
    kind { 1 }
    body { "MyText" }
    # stand_up {  "MyString" }
  end
end
