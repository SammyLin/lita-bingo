module Lita
  module Lita::Handlers::Bingo
    class Overtime < Lita::Handler

      route(/加班|overtime/i, :overtime, command: true, help: {
        t("help.overtime_key") => t("help.overtime_value")
      })

      def overtime(response)
        reply1 = %w(
                  賽車
                  引擎
                  繪圖
                  網路平台
                  航空
                  撞球
                  三國
                ).sample

        reply2 = %w(
                  功能
                  問題
                  文件
                  系統
                  \ bug\
                  \ feature\
                  \ API\
                  規格
                  子系統
                  \ memory\
                  效能
                ).sample
        reply3 = %w(
                  實做
                  設計
                  除錯
                  修正
                  支援
                  協助
                  追蹤
                  了解
                  蒐集
                  測試
                  試用
                ).sample
        response.reply "#{reply1}#{reply2}#{reply3}"
      end
    end
    Lita.register_handler(Overtime)
  end
end
