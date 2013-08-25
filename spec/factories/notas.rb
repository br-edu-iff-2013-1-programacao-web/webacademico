# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :nota do
    nota "MyString"
    avaliacao "MyString"
    diarioaluno nil
  end
end
