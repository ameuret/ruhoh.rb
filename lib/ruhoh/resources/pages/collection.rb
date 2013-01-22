module Ruhoh::Resources::Pages
  class Collection < Ruhoh::Resources::Base::Collection
    def config
      hash = super
      hash['layout'] ||= 'page'
      hash['ext'] ||= ".md"
      hash
    end
  end
end