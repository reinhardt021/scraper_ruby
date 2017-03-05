class Post

    attr_accessor :writer, :title, :url, :points, :item_id, :comments

    def initialize(writer, title)
        @writer = writer
        @title = title
        @comments = []
    end

    def comments
        @comments
    end

    def add_comment(comment)
        @comments.push(comment)
    end

end
