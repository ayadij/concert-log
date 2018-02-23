class LogsController < ApplicationController
  before_action :set_log, only: [:show, :edit, :update, :destroy]
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all
  
  def index
    @logs = Log.all
  end

  def show
  end

  def new
    @log = Log.new
  end

  def edit
  end

  def create
    @log = Log.new(log_params)

    respond_to do |format|
      if @log.save
        format.html { redirect_to @log, notice: 'Log was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @log.update(log_params)
        format.html { redirect_to @log, notice: 'Log was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @log.destroy
    respond_to do |format|
      format.html { redirect_to logs_url, notice: 'Log was successfully destroyed.' }
    end
  end

  private
    def set_log
      @log = Log.find(params[:id])
    end

    def log_params
      params.require(:log).permit(:name, :artists, :venue, :cover)
    end
end
