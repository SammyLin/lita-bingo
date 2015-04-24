require 'yaml'

module LoadBingo
  def bingo(projcet, step)
    dictionary = YAML.load_file(File.expand_path('../../../../../bingo.yml', __FILE__))
    dictionary["bingo"][projcet.to_s][step.to_s].sample
  end
end
