class PensController < ApplicationController
  def index
  	 @pens = Pen.all
  end

   def show    
        @pen = Pen.find(params[:id])
  end


   def new 
   	   @pen= Pen.new
    
  end


   def create  
    @pen = Pen.new(params['pen'].permit(:color, :amount))    
    @pen.save 

    redirect_to pens_path
    
  end


   def edit
   	@pen = Pen.find(params[:id])
 	
  end


   def update    
    pen_params = params['pen'].permit(:color, :amount)
    @pen = Pen.find(params[:id])
    @pen.update(pen_params)
    redirect_to pens_path
  end


   def destroy
   	@pen = Pen.find(params[:id])
    @pen.destroy
    redirect_to(:back)
    
  end
end
