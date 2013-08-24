# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :grade do
    periodo "MyString"
    referencia "MyString"
    disciplina nil
    curso nil
  end
end
