class Tweet < ApplicationRecord

    include PgSearch::Model #Hace una serie de selects muy sofisticados en la base de datos

    pg_search_scope :search_full_text, against:{
        username: 'A',
        description: 'B'
    },
    using: {
        tsearch: {
            prefix: true,
            any_word: true,
            dictionary: 'simple'
        }
    }

    #Revisar y preguntar luego:
    #https://www.rubydoc.info/gems/pg_search/2.0.1#dictionary
end
