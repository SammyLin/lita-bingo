module Lita
  module Lita::Handlers::Bingo
    class Overtime < Lita::Handler
      include LoadBingo

      route(/加班|overtime/i, :overtime, command: true, help: {
        t("help.overtime_key") => t("help.overtime_value")
      })

      def overtime(response)

        reply1 = bingo(:overtime, :reply1)
        reply2 = bingo(:overtime, :reply2)
        reply3 = bingo(:overtime, :reply3)

        response.reply "今天我要做 #{reply1}#{reply2}#{reply3}"
      end
    end
    Lita.register_handler(Overtime)
  end
end
