class Transaction < ApplicationRecord
  belongs_to :transaction_type
  belongs_to :store

  def self.parse_parameters params
    file = params[:transaction_file].tempfile

    transactions = []
    File.readlines(file).each do |line|
      puts line

      #Check for transaction type
      transaction_type = TransactionType.find_by(identifier: line[0])
      if !transaction_type.present?
        next
      end

      #Check for store
      store = Store.find_by(document: line[19..29])
      if !store.present?
        #Create new store if needed
        ActiveRecord::Base.transaction do
          store = Store.create!(
            name: line[62..80].strip,
            owner: line[48..61].strip,
            document: line[19..29]
          )
        end
      end

      #Parse data from line
      transactions << {
        transaction_type_id: transaction_type.id,
        date: line[1..8].to_date,
        value: BigDecimal(line[9..18]) / 100,
        card: line[30..41],
        hour: 0, #line[42..47], (TODO: Fix time column)
        store_id: store.id
      }
    end

    transactions
  end
end