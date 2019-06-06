defmodule Reorganizer do
  def reorganizer_lexer(tokens) when tokens != [] do
    top = hd(tokens)
    rest = tl(tokens)

    if is_list(top) do
      top
    else
      reorganizer_lexer(rest)
    end
  end

  def reorganizer_lexer(_tokens) do
    []
  end
end
