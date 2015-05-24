defmodule Schizo do

  def upper(string) do
    String.upcase(string)
  end

  def alternate_upper(sentence) do
    words = String.split(sentence)
    tranformed_words = transform_alternate_words words
    Enum.join(Enum.to_list(tranformed_words)," ")
  end

  def transform_alternate_words(words) do
    stream = Stream.with_index(words)
    Enum.map(stream, &odd_words_transformer/1)
  end

  def odd_words_transformer({word,index}) do
    cond do
      rem(index,2) == 0 -> word
      rem(index,2) == 1 -> upper(word)
    end
  end

end
