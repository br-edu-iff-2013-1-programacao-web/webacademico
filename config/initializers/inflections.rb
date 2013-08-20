# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end

ActiveSupport::Inflector.inflections do |inflect|
    inflect.irregular 'aluno', 'alunos'
    inflect.irregular 'nota', 'notas'
    inflect.irregular 'frequencia', 'frequencias'
    inflect.irregular 'diarioaluno', 'diarioalunos'
    inflect.irregular 'matriculado', 'matriculados'
    inflect.irregular 'professor', 'professores'
    inflect.irregular 'diario', 'diarios'
    inflect.irregular 'grade', 'grades'
    inflect.irregular 'curso', 'cursos'
    inflect.irregular 'disciplina', 'disciplinas'
end

