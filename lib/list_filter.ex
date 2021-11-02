defmodule ListFilter do
  def call(list) do
    if Enum.empty?(list) do
      0
    else
      Enum.reduce(list, 0, fn num, acc -> reduce(num, acc) end)
    end
  end

  defp reduce(num, acc) do
    converted_acc = convert(acc)
    converted_num = convert(num)

    if rem(converted_num, 2) == 0 do
      converted_acc
    else
      converted_acc + 1
    end
  end

  defp convert(value) when is_integer(value), do: value

  defp convert(value) when not is_integer(value) do
    try do
      String.to_integer(value)
    rescue
      _e in ArgumentError -> 0
    end
  end
end
