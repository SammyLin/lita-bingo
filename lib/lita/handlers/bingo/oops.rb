module Lita
  module Lita::Handlers::Bingo
    class Oops < Lita::Handler
      include LoadBingo

      route(/出包|理由|oops/i, :oops, command: true, help: {
        t("help.oops_key") => t("help.oops_value")
      })

      def oops(response)
        reply1 = bingo(:oops, :reply1)
        reply2 = bingo(:oops, :reply2)
        reply3 = bingo(:oops, :reply3)

        response.reply "#{reply1}#{reply2}#{reply3}"
      end
    end
    Lita.register_handler(Oops)
  end
end
