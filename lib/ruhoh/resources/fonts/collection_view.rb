module Ruhoh::Resources::Fonts
  class CollectionView < SimpleDelegator
    attr_accessor :_cache

    def initialize(collection)
      super(collection)
      @_cache = {}
    end

    def all()
      files.values.map { |pointer|
        load_model_view(pointer)
      }
    end

    def make_url(name)
      return name if name =~ /^(http:|https:)?\/\//i

      path = if @_cache[name]
        @_cache[name]
      else
        @_cache[name] = name
        "#{name}?#{rand()}"
      end

      ruhoh.to_url(url_endpoint, path)
    end

  end
end
