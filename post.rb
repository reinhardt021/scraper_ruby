class Post

    attr_accessor :writer, :title, :url, :points, :item_id, :comments

    def initialize(writer, title)
        @writer = writer
        @title = title
        @comments = []
        # puts "I'm a post! LOL. Today we are talking about #{@title} with #{@writer.name}"
    end

    def comments
        # returns all comments associated with a particular post
        @comments
    end

    def add_comment(comment)
        @comments.push(comment)
    end

end
