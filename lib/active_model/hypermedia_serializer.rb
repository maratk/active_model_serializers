module ActiveModel
  class HypermediaSerializer < Serializer
    if Routes
      include Routes.url_helpers 
      def as_json
        { :link => hypermedia_url }
      end
    end
  end
end
