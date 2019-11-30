class GroupsController < ApplicationController
  before_action :set_group, only: [:update, :edit]

  def index
    @group = Group.new
  end
  
  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, notice: '赤ちゃんを登録しました'
    else
      render :new
    end
  end

  def update
    if @group.update(group_params)
      redirect_to group_messages_path(@group), notice: "情報を編集しました"
    else
      render :edit
    end
  end

  private
  def group_params
    params.require(:group).permit(:name, :birthday, :icon, :image, :meimei, :mhug, :phug, :fphoto, :imhome, :finger, :bathing, :diapers, :hund, :walking, :bathingwith1, :sleepingface1, :discovery, :cream, :saycheese1, :neck, :bathingwith2, :get, :tooth, :roll, :babyfood, :brush, :sleepingface2, :saycheese2, :high, :mam, :high2, :looking, :sit, :stand, :high3, :straw, :sleepingface3, :saycheese3, :imitate, :go, :hair, :katikati, :follow, :pause, :walk, :yam, :sleepingface4, :saycheese4, :imitate2, {user_ids: [] })
  end

  def set_group
    @group = Group.find(params[:id])
  end
end