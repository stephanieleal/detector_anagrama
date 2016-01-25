class AnagramasController < ApplicationController

  def new
     @anagrama = Anagrama.new
  end

  def create
    @palavra = params[:anagrama][:word]
    @palavra2 = params[:anagrama][:word2]
    @anagrama = Anagrama.new
    @anagrama.word = @palavra
    @anagrama.word2 = @palavra2

    detector = Anagram.new(@palavra)
    if detector.is_anagram?(@palavra2)
      @anagrama.save
      redirect_to mensagens_sucesso_path
    else
      redirect_to mensagens_erro_path
    end
  end
end
