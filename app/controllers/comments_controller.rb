class CommentsController < ApplicationController
    def create
      comment = Comment.create!(comment_params)

      redirect_to comment.post, notice: "O seu comentário foi enviado"
    end

    private

    def comment_params
      params.require(:comment).permit(:post_id, :author, :body)
    end
end
