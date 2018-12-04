class TodosController < ApplicationController

  def show
    render json: Todo.find(params[:id])
  end

  def create
    @todo = Todos.new(todo_params)
    todo.done = false
    if @todo.save
      render json: @todo
    else
      render json: @todo.errors.full_messages, status: 422
    end
  end

  def index

  end

  def destroy


  end

  private

  def todo_params
    params.require(params).permit(title, body)
  end
end
