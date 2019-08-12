class Gem::Commands::ExecCommand < Gem::Command
  def initialize
    super("exec", "Add a description here")
  end

  def execute
    # here goes the code that will be executed
    # when someone runs "gem exec"
    say "It works!"
  end
end
