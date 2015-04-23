module Lita
  module Lita::Handlers::Bingo
    class Engineer < Lita::Handler

      route(/工程師|engineer|凹/i, :engineer, command: true, help: {
        t("help.engineer_key") => t("help.engineer_value")
      })

      def engineer(response)
        reply1 = %w(
                  你就當練功
                  你就當學經驗
                  你就當我都不懂
                  你要想未來的分紅
                  你要看長遠一點
                  你就當練技術
                  你就當測試
                ).sample

        reply2 = %w(
                  幫我修這個Bug吧！
                  幫我做這個案子吧！
                  幫我解這個問題吧！
                  幫我回這個客戶吧！
                  幫我上這個App吧！
                  幫我墊這個小錢吧！
                  幫我加這個欄位吧！
                  幫我偷這些資料吧！
                ).sample

        response.reply "#{reply1}#{reply2}"
      end
    end
    Lita.register_handler(Engineer)
  end
end
