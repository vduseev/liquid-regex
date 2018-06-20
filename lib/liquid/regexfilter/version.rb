module Liquid
  module RegexFilter
    MAJOR = 0
    MINOR = 1

    def self.version
      patch = `git rev-list --count --first-parent HEAD`
      "#{MAJOR}.#{MINOR}.#{patch}"
    end
  end
end
