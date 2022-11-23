# frozen_string_literal: true

# Todos controller
class TodosController < ApplicationController
  def create
    todo = Todo.new(todo_params)

    render json: todo.to_json, status: :created if todo.save
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
