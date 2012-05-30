require "gempath/version"

module Gempath

  class NoTargetSpecifiedError < StandardError; end

  def self.find(target, options = {})
    raise NoTargetSpecifiedError unless target

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
