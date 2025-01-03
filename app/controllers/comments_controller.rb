class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    comment.author = current_user.email if user_signed_in?

    if comment.save
      redirect_to comment.post, notice: "O seu comentário foi enviado"
    else
      redirect_to comment.post, alert: "Não foi possível enviar o comentário"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:post_id, :author, :body)
  end
end
