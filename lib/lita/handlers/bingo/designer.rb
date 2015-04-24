module Lita
  module Lita::Handlers::Bingo
    class Designer < Lita::Handler
      include LoadBingo

      route(/設計師|designer/i, :designer, command: true, help: {
        t("help.designer_key") => t("help.designer_value")
      })

      def designer(response)
        reply1 = bingo(:designer, :reply1)
        reply2 = bingo(:designer, :reply2)

        response.reply "#{reply1}#{reply2}"
      end
    end
    Lita.register_handler(Designer)
  end
end
