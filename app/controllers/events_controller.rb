class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_event, only: [:show, :edit, :update, :destroy, :show, :join, :leave]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to @event, notice: 'イベントが作成されました'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'イベントが更新されました'
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, notice: 'イベントが削除されました'
  end

  def join
    @event.attendees << current_user unless @event.attendees.include?(current_user)
    redirect_to @event, notice: 'イベントに参加しました。'
  end

  def leave
    @event.attendees.delete(current_user)
    redirect_to @event, notice: 'イベントの参加をキャンセルしました。'
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :location, :start_time, :end_time)
  end
end
