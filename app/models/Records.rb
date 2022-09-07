class Records < ActiveRecords::Base
    belongs_to :Students
    belongs_to :Books
end