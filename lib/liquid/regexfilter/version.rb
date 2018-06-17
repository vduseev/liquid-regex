module Liquid
  module RegexFilter
    MAJOR = 0
    MINOR = 1

    def version
      patch = `git rev-list --count --first-parent HEAD`
      "#{MAJOR}.#{MINOR}.#{patch}"
    end
  end
end
