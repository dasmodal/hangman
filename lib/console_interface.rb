# some documentation
class ConsoleInterface
  FIGURES =
    Dir["#{__dir__}/../data/figures/*.txt"]
    .sort
    .map { |file_name| File.read(file_name) }

  def initialize(game)
    @game = game
  end

  def clear_console
    system('cls') || system('clear')
  end

  def error_letters_to_show
    @game.error_letters.join(', ')
  end

  def figure
    FIGURES[@game.errors_made]
  end

  def print_out
    clear_console

    <<~GAME_STATUS
      Слово: #{word_to_show}
      #{figure}
      Ошибки (#{@game.errors_made}): #{error_letters_to_show}
      У вас осталось ошибок: #{@game.errors_allowed}

    GAME_STATUS
  end

  def read_figures
    file_names = Dir[File.join(__dir__, 'data', 'figures', '*.txt')].sort
    file_names.map { |file_name| File.read(file_name) }
  end

  def result
    if @game.won?
      'Поздравляем, вы выиграли!'
    elsif @game.lost?
      "Вы проиграли, загаданное слово: #{@game.word}"
    end
  end

  def word_to_show
    result = @game.letters_to_guess.map { |letter| letter.nil? ? '__' : letter }
    result.join(' ')
  end
end
