require "liquid/san/version"
require "liquid/san/filter"
require 'liquid'

module Liquid
  module San
    class TemplateError < StandardError; end

    def liquidize(name, context)
      fail TemplateError.new("object can't respond to method ``#{name}''.") unless self.respond_to? name

      template = self.send name
      string = Liquid::Template.parse(template).render(context, filters: [Filter])

      if string.respond_to? :html_safe
        string.html_safe
      else
        string
      end
    end

  end
end
