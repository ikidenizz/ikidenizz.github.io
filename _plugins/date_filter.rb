module Jekyll
    module TurkishDateFilter
        def turkish_date(date)
            months = {
                1 => "Ocak", 2 => "Şubat", 3 => "Mart", 4 => "Nisan", 5 => "Mayıs", 6 => "Haziran",
                7 => "Temmuz", 8 => "Ağustos", 9 => "Eylül", 10 => "Ekim", 11 => "Kasım", 12 => "Aralık"
            }
            "#{date.day} #{months[date.mon]} #{date.year}"
        end
    end
end

Liquid::Template.register_filter(Jekyll::TurkishDateFilter)
