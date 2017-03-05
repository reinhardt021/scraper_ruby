class Comment

    attr_accessor :post, :commentor, :message

    def initialize(post, message = "")
        @post = post
        @message = message
    end

end
