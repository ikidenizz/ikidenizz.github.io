module Jekyll
    module RelatedPostsFilter
        def calculate_tf_idf_similarity(content1, content2, all_contents)
            tf1 = calculate_tf(content1)
            tf2 = calculate_tf(content2)
            idf = calculate_idf([content1, content2] + all_contents)

            similarity = 0
            (tf1.keys | tf2.keys).each do |word|
                similarity += (tf1[word] || 0) * idf[word] * (tf2[word] || 0) * idf[word]
            end
            similarity
        end

        def calculate_tf(content)
            words = content.split
            total_words = words.size
            tf = Hash.new(0)
            words.each { |word| tf[word] += 1 }
            tf.each { |word, count| tf[word] = count.to_f / total_words }
            tf
        end

        def calculate_idf(contents)
            total_documents = contents.size
            idf = Hash.new(0)
            contents.each do |content|
                content.split.uniq.each { |word| idf[word] += 1 }
            end
            idf.each { |word, count| idf[word] = Math.log(total_documents.to_f / count) }
            idf
        end
    end
end

Liquid::Template.register_filter(Jekyll::RelatedPostsFilter)
