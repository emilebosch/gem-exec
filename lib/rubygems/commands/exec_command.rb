class Gem::Commands::ExecCommand < Gem::Command
  def initialize
    super("exec", "Install a gem and execute")
  end

  def execute
    a = options[:args].dup
    g = a.shift
    system("gem", "install", g)
    system(g, *a)
  end
end
