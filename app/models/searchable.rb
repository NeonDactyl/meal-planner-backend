class Searchable < ApplicationRecord
    self.abstract_class = true

    def self.search(query)
        expanded_query = query.split('').join('%')
        where("name LIKE ?", '%' + expanded_query + '%')
    end
  end  