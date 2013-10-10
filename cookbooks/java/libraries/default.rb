module JavaUtils
  def do_something(a=1)
    Chef::Log::info("I do #{a}")
  end
end
