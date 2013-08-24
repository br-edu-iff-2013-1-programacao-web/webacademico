# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :matriculado do
    periodo "MyString"
    estadomatricula "MyString"
    aluno nil
    curso nil
  end
end
