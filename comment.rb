class Comment

    attr_accessor :post, :commentor, :message

    # def initialize(post, commentor, message = "")
    def initialize(post, message = "")
        @post = post
        # @commentor = commentor
        @message = message
        # puts "I'm a comment! YAY - by #{@commentor.name} for #{@post.title}"
    end

end
