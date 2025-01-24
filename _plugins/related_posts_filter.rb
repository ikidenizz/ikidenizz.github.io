module Jekyll
    module RelatedPostsFilter
        def related_posts_by_content(input_post, posts, limit = 3)
            # Mevcut yazının içeriğini al
            current_content = input_post.content.downcase

            # Benzerlik skorlarını hesapla
            related = posts.map do |post|
                next if post.url == input_post.url # Mevcut yazıyı hariç tut
                content = post.content.downcase
                similarity = calculate_similarity(current_content, content)
                { post: post, similarity: similarity }
            end.compact

            # Benzerlik skoruna göre sırala ve limit uygula
            related.sort_by { |item| -item[:similarity] }.first(limit).map { |item| item[:post] }
        end

        private

        # Basit bir benzerlik hesaplama fonksiyonu (kelime frekansına göre)
        def calculate_similarity(content1, content2)
            words1 = content1.split
            words2 = content2.split
            common_words = (words1 & words2).size
            total_words = (words1 + words2).uniq.size
            common_words.to_f / total_words
        end
    end
end

Liquid::Template.register_filter(Jekyll::RelatedPostsFilter)
