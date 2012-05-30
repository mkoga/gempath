require "gempath/version"

module Gempath

  def path(target, options = {})
    unless target
      puts optparse
      exit 1 
    end

    begin
      args = [ target ]
      args << options[:v] if options[:v]
      gem *args

      puts Gem::Specification.find_by_name(target).gem_dir
      exit 0

    rescue LoadError
      puts "'#{target}' not found in #{Gem.path.join(' or ')}"
      exit 1
    end
  end

end
