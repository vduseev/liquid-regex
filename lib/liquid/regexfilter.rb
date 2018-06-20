require "liquid/regexfilter/version"

module Liquid
  module RegexFilter
    def regex(input, regexp, replacement = nil)
      # Return input unchanged unless it's a string
      return input unless input.is_a?(String)

      # Construct a regular expression
      expr = /#{regexp}/

      if replacement
        # Return input with replaced substring
        input.gsub(expr, replacement)
      else
        m = expr.match(input)
        # Return matched part if success, otherwise - unchanced input
        m ? m.to_s : input
      end
    end
  end
end
