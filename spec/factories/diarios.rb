# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :diario do
    ano "MyString"
    semestre "MyString"
    turno "MyString"
    pasta "MyString"
    grade nil
    docente nil
  end
end
