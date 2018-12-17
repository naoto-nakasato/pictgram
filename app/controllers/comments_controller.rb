class CommentsController < ApplicationController
  def index
    @comment_topics = current_user.comment_topics
  end

  def create
    comment = Comment.new(text: params[:comment][:text],user_id: current_user.id, topic_id: params[:comment][:topic_id])

    if comment.save
      redirect_to topics_path, success: 'コメントしました'
    else
      redirect_to topics_path, danger: 'コメントに失敗しました'
    end
  end
  def destroy
    Comment.find_by(topic_id: params[:topic_id]).delete
    redirect_to topics_path, danger: 'コメントを削除しました。'
  end
  def new
    @comment = Comment.new
  end

end
