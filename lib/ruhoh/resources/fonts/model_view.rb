module Ruhoh::Resources::Fonts
  class ModelView < SimpleDelegator
    def url()
      	self.collection.make_url(self.pointer['id'])
    end

    def id()
    	self.pointer['id']
    end

    def path()
    	self.pointer['realpath']
    end
  end
end
