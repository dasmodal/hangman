# some documentation
class Game
  TOTAL_ERRORS_ALLOWED = 7

  def initialize(word)
    @letters = word.chars
    @user_guesses = []
  end

  def error_letters
    @user_guesses - normalized_letters
  end

  def errors_allowed
    TOTAL_ERRORS_ALLOWED - errors_made
  end

  def errors_made
    error_letters.size
  end

  def letters_to_guess
    @letters.map { |letter| @user_guesses.include?(normalize_letter(letter)) ? letter : nil }
  end

  def lost?
    errors_allowed.zero?
  end

  def normalize_letter(letter)
    return 'Е' if letter == 'Ё'
    return 'И' if letter == 'Й'

    letter
  end

  def normalized_letters
    @letters.map { |letter| normalize_letter(letter) }
  end

  def over?
    won? || lost?
  end

  def play!(letter)
    letter = normalize_letter(letter)

    @user_guesses << letter if !over? && !@user_guesses.include?(letter)
  end

  def word
    @letters.join
  end

  def won?
    (normalized_letters - @user_guesses).empty?
  end
end
