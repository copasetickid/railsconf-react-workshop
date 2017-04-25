module Status
  extend ActiveSupport::Concern

  included do
    enum status:  [ :active, :archived ]

    def self.remove_all
      update_all status: statuses['removed']
    end
  end
end
