defmodule Schema do 
    @moduledoc """
    Schema boundry, a schema is the model and is not dependant on anything except 
    the database.
    """ 
    use Boundary, deps: [], exports: []
end 