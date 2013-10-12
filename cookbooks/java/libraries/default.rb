require 'fileutils'

module JavaUtils
  def do_something(a=1)
    Chef::Log::info("I do #{a}")
  end

  def do_copy(src='/etc/hosts', dest='/tmp1')
    unless File.exists?(File.dirname(dest))
      Chef::Log::error('Cant copy into non-existend destination ... quit')
      return nil
    end
    unless File.exists?(dest)
      FileUtils.copy(src, dest)
    end
  end
end
