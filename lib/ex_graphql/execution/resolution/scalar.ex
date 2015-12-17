defimpl ExGraphQL.Execution.Resolution, for: ExGraphQL.Type.Scalar do

  def resolve(%{parse_value: parse_value}, %{resolution: %{target: target}} = execution) do
    {:ok, parse_value.(target), execution}
  end

end
