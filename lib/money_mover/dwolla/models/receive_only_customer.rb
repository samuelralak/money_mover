module MoneyMover
  module Dwolla
    class ReceiveOnlyCustomer < Customer
      validates_presence_of :firstName, :lastName, :email

      private

      def create_params
        create_attrs = {
          firstName: firstName,
          lastName: lastName,
          email: email,
          type: 'receive-only',
        }

        create_attrs[:ipAddress] = ipAddress if ipAddress.present?

        create_attrs
      end
    end
  end
end
