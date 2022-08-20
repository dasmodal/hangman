# output game interface to the console
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

    word = "Слово: #{word_to_show}"
    mistakes = "Ошибки (#{@game.errors_made}): #{error_letters_to_show}"

    <<~GAME_STATUS
      #{word.colorize(:light_blue)}
      #{figure.colorize(:yellow)}

      #{mistakes.colorize(:red)}
      У вас осталось ошибок: #{@game.errors_allowed}
      #{result}
    GAME_STATUS
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
