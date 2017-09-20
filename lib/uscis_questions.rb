require "uscis_questions/version"
require "thor"

module UscisQuestions
  class CLI < Thor
    desc "hello [name]", "say my name"
    def hello(name)
      if name == "masa"
        puts "Ossu, genki?"
      else
        puts "Haa?"
      end
    end
  end
end
