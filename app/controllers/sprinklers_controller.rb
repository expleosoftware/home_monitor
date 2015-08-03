class SprinklersController < ApplicationController

  def index
    @sprinklers = Sprinkler.order(:start_at).all
    respond_to do |format|
      format.html
      format.xml { render :xml => @sprinklers.to_xml }
      format.json { render :json => @sprinklers.to_json }
    end
  end

  def create
    Sprinkler.create(allowed_attrs)
    redirect_to :root
  end

  def update
    Sprinkler.find(params[:id]).update(allowed_attrs)
    redirect_to :index
  end

  def destroy
    Sprinkler.find(params[:id]).destroy
    redirect_to :root
  end

  private

  def allowed_attrs
    params.require(:sprinkler).permit("in_progress","performed","start_at(1i)","start_at(2i)","start_at(3i)","start_at(4i)","start_at(5i)","duration")
  end

end
