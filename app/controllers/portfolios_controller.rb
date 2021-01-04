class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: %i[edit update show destroy]
  layout 'portfolio'

  def index
    @portfolio_items = Portfolio.all
    @page_title = 'All Portfolios'
  end

  def new
    @new_portfolio = Portfolio.new
    3.times { @new_portfolio.technologies.build }
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio was successfully created!' }
      else
        format.html { render :new }
      end
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'The Portfolio was successfully edited!' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @page_title = @portfolio.title
  end

  def destroy
    @portfolio.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully destroyed.' }
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end

  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
