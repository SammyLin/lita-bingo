require 'yaml'

module LoadBingo
  def bingo(projcet, step)
    dictionary = YAML.load_file('bingo.yml')
    dictionary["bingo"][projcet.to_s][step.to_s].sample
  end
end
