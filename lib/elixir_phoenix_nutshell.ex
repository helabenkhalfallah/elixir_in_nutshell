defmodule ElixirPhoenixNutshell do
  @moduledoc """
  ElixirPhoenixNutshell is a sample project to test Elixir principles features.
  We will study :
  - operators
  - types
  - typespecs
  - functions
  - module attributes
  - documentations
  - list
  - map
  """

  # This is a comment
  # There is no multiline comments in Elixir
  # Elixir differentiate between doc & comments
  # creating alias
  alias IO, as: MyIO
  # Importing modules
  import ModulesFunctions
  import OperatorsTypesCond
  import ListOperations
  import MapOperations

  # call sum from ModulesFunctions
  # store function result to variable
  somme = sum_numbers(2, 5)

  # puts : console.log
  # string interpolation #{somme}
  # somme : 7
  MyIO.puts('somme : #{somme}')

  multiplication = mul_numbers(3, 3)
  # multiplication : 9
  MyIO.puts('multiplication : #{multiplication}')

  # all functions are loaded by default except _complex_operation
  # ** (CompileError) lib/elixir_phoenix_nutshell.ex:36: undefined function _complex_operation/2
  # _complex_operation(2,3)
  # we should import it manually
  complex = ModulesFunctions._complex_operation(2, 3)
  # complex : 4.5
  MyIO.puts('complex : #{complex}')
  # ((((2 + 3) * 2) - 1) / 2)

  # Compiler helpful messages :
  # ** (UndefinedFunctionError) function ModulesFunctions.complex_operation/2 is undefined or private.
  # Did you mean one of:
  # * _complex_operation/2
  # warning: defp div_numbers/2 is private, @doc attribute is always discarded for private functions/macros/types
  #  lib/modules_functions.ex:47: ModulesFunctions.div_numbers/2

  # calling a private function
  # division = div_numbers(15, 3)
  # puts('division : #{division}')
  # ** (CompileError) lib/elixir_phoenix_nutshell.ex:50: undefined function div_numbers/2
  # division = ModulesFunctions.div_numbers(15, 3)
  # ** (UndefinedFunctionError) function ModulesFunctions.div_numbers/2 is undefined or private.
  # Private function can only been called inside the module

  # call function without parameters
  area = rectangle_area()
  # area : 18.849539999999998 => rectangle_area(a \\ 2, b \\ 3) * pi
  MyIO.puts('area : #{area}')

  area = rectangle_area(4, 2)
  # area : 25.13272 (4 * 2 * pi)
  MyIO.puts('area : #{area}')
end
