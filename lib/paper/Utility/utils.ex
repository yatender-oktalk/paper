defmodule Paper.Utils do
  def convert_to_int(value) do
    case is_binary(value) do
      false ->
        case is_float(value) do
          false ->
            case Decimal.decimal?(value) do
              true -> value |> Decimal.round() |> Decimal.to_integer()
              _ -> value
            end

          _ ->
            Kernel.trunc(value)
        end

      _ ->
        {usr, _} = Integer.parse(value)
        usr
    end
  end
end