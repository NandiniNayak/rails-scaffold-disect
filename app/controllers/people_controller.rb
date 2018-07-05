class PeopleController < ApplicationController
  def elephant
  end

  def new
    @person = Person.new
  end

  def index
    # fetches all the data from the database
    @people = Person.all
  end

  def edit
    # params are used when getting information passed via the url or data being passed from the form
    @person = Person.find(params[:id])
  end

  def show
    @person = Person.find(params[:id])
  end

  def create
    # render plain: params[:people].inspect
    # everytime a form parameters are added to the databse, explicily permit the parameters that can be added to the database
    @person = Person.new(person_params)
    @person.save
    redirect_to people_path
  end

  def update
    # render plain: params[:people].inspect
    @person = Person.find(params[:id])
    @person.update(person_params)

    redirect_to person_path
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_path
  end
  private

  def person_params
    params.require(:person).permit(:name, :age)
  end
end
