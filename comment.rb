class Comment

    attr_accessor :post, :commentor, :body

    def initialize(post, commentor)
        @post = post
        @commentor = commentor
        puts "I'm a comment! YAY - by #{@commentor.name} for #{@post.title}"
    end

end
