require_relative 'group'

puts 'Bem Vindo ao Weighted Randomized Group Generator!'
puts 'Edição Design Patterns!'
puts 'Digite "enter" para gerar uma composição de grupos.'
gets

designPatternsGroup = Group.new(['Bruno Andreetto', 'Santos Luiz', 'Lelia Loures', 'João Barbosa', 'Michael Nogueira'],
                                ['Raphael Soares', 'Flavio Cestari', 'Carlos Margadona', 'William Pascucci'],
                                ['Eduardo Miano', 'William Moura'])

groups = designPatternsGroup.randomizeGroups

puts "\nGrupo 1:\n" + groups[0].to_s
puts "\nGrupo 2:\n" + groups[1].to_s
puts "\n\nPressione qualquer tecla para sair."
gets
