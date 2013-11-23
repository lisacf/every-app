# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :proportion do
    ingredient_id nil
    recipe_id nil
    amount 1.5
    measure "MyString"
    comment "MyString"
  end
end
