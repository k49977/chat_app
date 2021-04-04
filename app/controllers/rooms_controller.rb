class RoomsController < ApplicationController
  before_action :authenticate_user! # Deviseのログイン確認

  # ついでにRoom一覧を表示させるアクションも追加しておく
  def index
    @rooms = Room.all.order(:id)
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
  end
end