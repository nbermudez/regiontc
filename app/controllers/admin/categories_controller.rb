class Admin::CategoriesController < AdminController
  def index
  	if puede "Ver Categoria"
  		@cats = Category.all
  	else
  		redirect_to access_denied_path
  	end
  end

  def new
  	if puede "Crear Categoria"
  		@cat = Category.new
  	else
  		redirect_to access_denied_path
  	end
  end

  def create
    @cat = Category.new(params[:category])

    if @cat.save
      redirect_to admin_category_path(@cat)
    else
      render :action => "new"
    end
  end

  def show
  	if puede "Modificar Categoria"
  		@cat = Category.find(params[:id])

      is = TagCategorization.where(:category_id => @cat.id)
      iss = [-1]
      is.each do |i|
        iss.push(i.tag_id)
      end

      @topicos = Tag.where("id in (?)", iss)
      
      @to_join = Tag.where("id not in (?)", iss)
  	else
  		redirect_to access_denied_path
  	end
  end

  def update
    @cat = Category.find(params[:id])
    if @cat.update_attributes(params[:category])
      redirect_to admin_category_path(@cat)
    else
      render :action => 'show'
    end
  end

  def destroy
    cat = Category.find(params[:id])
    cat.destroy

    redirect_to admin_categories_path
  end

  def remove_tag
    @cat = Category.find(params[:category_id])
    tc = TagCategorization.where("category_id = (?) and tag_id = (?)", params[:category_id], params[:tag_id])
    tc.delete_all
    redirect_to admin_category_path(@cat)
  end

  def add_tag
    @cat = Category.find(params[:id])
    new_tc = TagCategorization.new
    new_tc.category_id = @cat.id
    new_tc.tag_id = params[:tag_id]

    new_tc.save
    redirect_to admin_category_path(@cat)
  end
end
