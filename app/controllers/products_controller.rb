class ProductsController < ApplicationController

     
    def index
        #shows all the details of all the products
        @products= Product.all
        
    end
   
end
