class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]
  layout 'portfolio'
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all


  def index
    #@portfolio_items = Portfolio.where(subtitle: "Angular")
    #@portfolio_items = Portfolio.angular   We are using the model class definition.
    #@portfolio_items = Portfolio.ruby_on_rails_portfolio_items We are using custom scope.
    @portfolio_items = Portfolio.by_position
  end

  def sort
    params[:order]. each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end

    render nothing: true
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    #@portfolio_item = Portfolio.find(params[:id])
  end

  def update
    #@portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end

  end

  def show
    #@portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
    # Perform the lookup
    #@portfolio_item = Portfolio.find(params[:id])
    #Destroys the record
    @portfolio_item.destroy
    #Redirects

    respond_to do |format|
        format.html { redirect_to portfolios_path, notice: 'Portfolio was removed.' }
    end
  end

  private

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end



  def portfolio_params
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      :main_image,
                                      :thumb_image,
                                      technologies_attributes: [:id, :name, :_destroy]
                                      )
  end

end
