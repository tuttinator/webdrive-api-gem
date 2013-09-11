require 'webdrive/version'
require 'xmlrpc/client'
require 'webdrive/api/client'

module Webdrive
  
  module API

    # List of methods obtained from system.listMethods
    REMOTE_METHODS = %w(checkAuthKey login settingGet resellerDetailsGet resourceSearch domainLoad domainOptionStatusGet domainRedirectList domainRedirectSet domainEmailList domainEmailForwardSet registryCCGatewayAvailable registryDomainAvailable registryDomainRenewable registryDomainUDAISend registryDomainUDAIValid registryGetFAQ registryGetTLDInfo registryRenewalPriceGet registryGetPaymentTypes registryRenewLoad zoneUpdate simpleZoneSet zoneGet zoneSet zoneList DAGDNSModeGet DAGDNSModeSet hostingTransactionCommit registryTransactionCommit reserveInvoiceIDs unreserveInvoiceIDs registryDomainStatus registryWhois registryCountryListGet registryContactGet registryContactUpdate registryContactDelete registryContactAdd registryContactsGet registryUserAdd registryUserPasswordSend registryUserExists registryUserEmailExists registryUserSecretQuestionAndAnswerSet registryUserSecretQuestionGet registryUserSecretAnswerGet registryUserSetEmail registryUserResetPassword registryUserSetPassword registryDomainContactGet registryDomainInfoGet registryDomainNameServerInfo registryDomainNameServersGet registryDomainNameServersSet subAccountDetailsGet subAccountDetailsUpdate registryInvoicesGet registryInvoiceHTMLGet registryDomainParkingGet registryDomainParkingSet domainsNZStatistics userSettingGet expiredTotalGet auctionsTotalGet auctionsUpcomingFeed auctionDomainsList auctionDomainInfo auctionWatchlistJoin auctionWatchlistLeave auctionBid auctionOutbidEmail auctionSuggestionInsert bidderDefaultHolder bidderDefaultBilling bidderDefaultTech bidderWatchlist bidderWatchAuctions bidderUnwatchAuctions bidderWatchlistEmailIntervalSet bidderSubscribeToAuctionsFeedSet bidderWonlist bidderWonAuction bidderInvoiceIDGet bidderInvoiceFill bidderInvoiceIDDelete isNewBidder rcpMultiCall system.listMethods system.methodHelp system.methodSignature).freeze
  end

end
