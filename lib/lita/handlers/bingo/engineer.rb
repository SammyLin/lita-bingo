module Lita
  module Lita::Handlers::Bingo
    class Engineer < Lita::Handler
      include LoadBingo

      route(/工程師|engineer|凹/i, :engineer, command: true, help: {
        t("help.engineer_key") => t("help.engineer_value")
      })

      def engineer(response)
        reply1 = bingo(:engineer, :reply1)
        reply2 = bingo(:engineer, :reply2)

        response.reply "#{reply1}#{reply2}"
      end
    end
    Lita.register_handler(Engineer)
  end
end
