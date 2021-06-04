class Result {
  int? id;
  String? name;
  String? displayName;
  var title;
  var parentId;
  var parentName;
  var ref;
  String? lang;
  int? activeLangCount;
  var tz;
  String? tzOffset;
  var sameVatPartnerId;
  List<dynamic>? bankIds;
  var website;
  var comment;
  List<dynamic>? categoryId;
  double? creditLimit;
  var active;
  var employee;
  var function;
  String? type;
  var street;
  var street2;
  var zip;
  var city;
  var stateId;
  var countryId;
  double? partnerLatitude;
  double? partnerLongitude;
  String? emailFormatted;
  var mobile;
  var isCompany;
  var industryId;
  String? companyType;
  var companyId;
  int? color;
  List<dynamic>? userIds;
  var partnerShare;
  String? contactAddress;
  var commercialCompanyName;
  var companyName;
  var barcode;
  String? imStatus;
  var email;
  var phone;
  List<dynamic>? channelIds;
  var userId;
  String? contactAddressComplete;
  var imageMedium;
  var signupToken;
  var signupType;
  var signupExpiration;
  var signupValid;
  var signupUrl;
  String? calendarLastNotifAck;
  var ocnToken;
  int? partnerGid;
  var additionalInfo;
  double? credit;
  double? debit;
  double? debitLimit;
  double? totalInvoiced;
  var propertyAccountPositionId;
  var propertyPaymentTermId;
  var propertySupplierPaymentTermId;
  List<dynamic>? refCompanyIds;
  var hasUnreconciledEntries;
  var lastTimeEntriesChecked;
  List<dynamic>? contractIds;
  int? bankAccountCount;
  String? trust;
  String? invoiceWarn;
  var invoiceWarnMsg;
  int? supplierRank;
  int? customerRank;
  var teamId;
  List<dynamic>? opportunityIds;
  List<dynamic>? meetingIds;
  int? opportunityCount;
  int? meetingCount;
  List<dynamic>? taskIds;
  int? taskCount;
  String? pickingWarn;
  var pickingWarnMsg;
  var onlinePartnerVendorName;
  var onlinePartnerBankAccount;
  var vat;
  List<dynamic>? paymentTokenIds;
  int? paymentTokenCount;
  var onlinePartnerInformation;
  int? saleOrderCount;
  String? saleWarn;
  var saleWarnMsg;
  String? dealerSeq;
  var isDealer;
  var date;
  var region;
  var business;
  int? expYear;
  String? dealerType;
  String? sellingPropertyExperience;
  String? scopeOfWork;
  String? jointVisitDone;
  var proposedSalesExecutive;
  var territory;
  var image1920;
  List<dynamic>? activityIds;
  var activityState;
  var activityDateDeadline;
  var activityExceptionDecoration;
  var activityExceptionIcon;
  var emailNormalized;
  var isBlacklisted;
  int? messageBounce;
  var messageIsFollower;
  var messageUnread;
  int? messageUnreadCounter;
  var messageNeedaction;
  int? messageNeedactionCounter;
  var messageHasError;
  int? messageHasErrorCounter;
  int? messageAttachmentCount;
  var messageMainAttachmentId;
  List<dynamic>? websiteMessageIds;
  var messageHasSmsError;
  var phoneSanitized;
  var phoneSanitizedBlacklisted;
  var phoneBlacklisted;
  var mobileBlacklisted;
  var image1024;
  var image512;
  var image256;
  var image128;
  var activityUserId;
  var activityTypeId;
  var activityTypeIcon;
  var activitySummary;
  int? ticketCount;
  String? createDate;
  String? writeDate;
  String? lastUpdate;

  Result(
      {this.id,
      this.name,
      this.displayName,
      this.title,
      this.parentId,
      this.parentName,
      this.ref,
      this.lang,
      this.activeLangCount,
      this.tz,
      this.tzOffset,
      this.sameVatPartnerId,
      this.bankIds,
      this.website,
      this.comment,
      this.categoryId,
      this.creditLimit,
      this.active,
      this.employee,
      this.function,
      this.type,
      this.street,
      this.street2,
      this.zip,
      this.city,
      this.stateId,
      this.countryId,
      this.partnerLatitude,
      this.partnerLongitude,
      this.emailFormatted,
      this.mobile,
      this.isCompany,
      this.industryId,
      this.companyType,
      this.companyId,
      this.color,
      this.userIds,
      this.partnerShare,
      this.contactAddress,
      this.commercialCompanyName,
      this.companyName,
      this.barcode,
      this.imStatus,
      this.email,
      this.phone,
      this.channelIds,
      this.userId,
      this.contactAddressComplete,
      this.imageMedium,
      this.signupToken,
      this.signupType,
      this.signupExpiration,
      this.signupValid,
      this.signupUrl,
      this.calendarLastNotifAck,
      this.ocnToken,
      this.partnerGid,
      this.additionalInfo,
      this.credit,
      this.debit,
      this.debitLimit,
      this.totalInvoiced,
      this.propertyAccountPositionId,
      this.propertyPaymentTermId,
      this.propertySupplierPaymentTermId,
      this.refCompanyIds,
      this.hasUnreconciledEntries,
      this.lastTimeEntriesChecked,
      this.contractIds,
      this.bankAccountCount,
      this.trust,
      this.invoiceWarn,
      this.invoiceWarnMsg,
      this.supplierRank,
      this.customerRank,
      this.teamId,
      this.opportunityIds,
      this.meetingIds,
      this.opportunityCount,
      this.meetingCount,
      this.taskIds,
      this.taskCount,
      this.pickingWarn,
      this.pickingWarnMsg,
      this.onlinePartnerVendorName,
      this.onlinePartnerBankAccount,
      this.vat,
      this.paymentTokenIds,
      this.paymentTokenCount,
      this.onlinePartnerInformation,
      this.saleOrderCount,
      this.saleWarn,
      this.saleWarnMsg,
      this.dealerSeq,
      this.isDealer,
      this.date,
      this.region,
      this.business,
      this.expYear,
      this.dealerType,
      this.sellingPropertyExperience,
      this.scopeOfWork,
      this.jointVisitDone,
      this.proposedSalesExecutive,
      this.territory,
      this.image1920,
      this.activityIds,
      this.activityState,
      this.activityDateDeadline,
      this.activityExceptionDecoration,
      this.activityExceptionIcon,
      this.emailNormalized,
      this.isBlacklisted,
      this.messageBounce,
      this.messageIsFollower,
      this.messageUnread,
      this.messageUnreadCounter,
      this.messageNeedaction,
      this.messageNeedactionCounter,
      this.messageHasError,
      this.messageHasErrorCounter,
      this.messageAttachmentCount,
      this.messageMainAttachmentId,
      this.websiteMessageIds,
      this.messageHasSmsError,
      this.phoneSanitized,
      this.phoneSanitizedBlacklisted,
      this.phoneBlacklisted,
      this.mobileBlacklisted,
      this.image1024,
      this.image512,
      this.image256,
      this.image128,
      this.activityUserId,
      this.activityTypeId,
      this.activityTypeIcon,
      this.activitySummary,
      this.ticketCount,
      this.createDate,
      this.writeDate,
      this.lastUpdate});

  Result.fromJson(dynamic json) {
    id = json["id"];
    name = json["name"];
    displayName = json["display_name"];
    title = json["title"];
    parentId = json["parent_id"];
    parentName = json["parent_name"];

    ref = json["ref"];
    lang = json["lang"];
    activeLangCount = json["active_lang_count"];
    tz = json["tz"];
    tzOffset = json["tz_offset"];
    sameVatPartnerId = json["same_vat_partner_id"];

    website = json["website"];
    comment = json["comment"];

    creditLimit = json["credit_limit"];
    active = json["active"];
    employee = json["employee"];
    function = json["function"];
    type = json["type"];
    street = json["street"];
    street2 = json["street2"];
    zip = json["zip"];
    city = json["city"];
    stateId = json["state_id"];
    countryId = json["country_id"];
    partnerLatitude = json["partner_latitude"];
    partnerLongitude = json["partner_longitude"];
    emailFormatted = json["email_formatted"];
    mobile = json["mobile"] is bool ? "N/A" : json["mobile"];
    isCompany = json["is_company"];
    industryId = json["industry_id"];
    companyType = json["company_type"];
    companyId = json["company_id"];
    color = json["color"];

    partnerShare = json["partner_share"];
    contactAddress = json["contact_address"];

    commercialCompanyName = json["commercial_company_name"];
    companyName = json["company_name"];
    barcode = json["barcode"];
    imStatus = json["im_status"];
    email = json["email"];
    phone = json["phone"];

    userId = json["user_id"];
    contactAddressComplete = json["contact_address_complete"];
    imageMedium = json["image_medium"];
    signupToken = json["signup_token"];
    signupType = json["signup_type"];
    signupExpiration = json["signup_expiration"];
    signupValid = json["signup_valid"];
    signupUrl = json["signup_url"];
    calendarLastNotifAck = json["calendar_last_notif_ack"];

    ocnToken = json["ocn_token"];
    partnerGid = json["partner_gid"];
    additionalInfo = json["additional_info"];
    credit = json["credit"];
    debit = json["debit"];
    debitLimit = json["debit_limit"];
    totalInvoiced = json["total_invoiced"];

    propertyAccountPositionId = json["property_account_position_id"];
    propertyPaymentTermId = json["property_payment_term_id"];
    propertySupplierPaymentTermId = json["property_supplier_payment_term_id"];

    hasUnreconciledEntries = json["has_unreconciled_entries"];
    lastTimeEntriesChecked = json["last_time_entries_checked"];

    bankAccountCount = json["bank_account_count"];
    trust = json["trust"];
    invoiceWarn = json["invoice_warn"];
    invoiceWarnMsg = json["invoice_warn_msg"];
    supplierRank = json["supplier_rank"];
    customerRank = json["customer_rank"];
    teamId = json["team_id"];

    opportunityCount = json["opportunity_count"];
    meetingCount = json["meeting_count"];

    taskCount = json["task_count"];

    pickingWarn = json["picking_warn"];
    pickingWarnMsg = json["picking_warn_msg"];
    onlinePartnerVendorName = json["online_partner_vendor_name"];
    onlinePartnerBankAccount = json["online_partner_bank_account"];
    vat = json["vat"];

    paymentTokenCount = json["payment_token_count"];
    onlinePartnerInformation = json["online_partner_information"];
    saleOrderCount = json["sale_order_count"];

    saleWarn = json["sale_warn"];
    saleWarnMsg = json["sale_warn_msg"];
    dealerSeq = json["dealer_seq"];
    isDealer = json["is_dealer"];
    date = json["date"];
    region = json["region"];
    business = json["business"];
    expYear = json["exp_year"];
    dealerType = json["dealer_type"];
    sellingPropertyExperience = json["selling_property_experience"];
    scopeOfWork = json["scope_of_work"];
    jointVisitDone = json["joint_visit_done"];
    proposedSalesExecutive = json["proposed_sales_executive"];
    territory = json["territory"];
    image1920 = json["image_1920"];

    activityState = json["activity_state"];
    activityDateDeadline = json["activity_date_deadline"];
    activityExceptionDecoration = json["activity_exception_decoration"];
    activityExceptionIcon = json["activity_exception_icon"];
    emailNormalized = json["email_normalized"];
    isBlacklisted = json["is_blacklisted"];
    messageBounce = json["message_bounce"];
    messageIsFollower = json["message_is_follower"];

    messageUnread = json["message_unread"];
    messageUnreadCounter = json["message_unread_counter"];
    messageNeedaction = json["message_needaction"];
    messageNeedactionCounter = json["message_needaction_counter"];
    messageHasError = json["message_has_error"];
    messageHasErrorCounter = json["message_has_error_counter"];
    messageAttachmentCount = json["message_attachment_count"];
    messageMainAttachmentId = json["message_main_attachment_id"];
    messageHasSmsError = json["message_has_sms_error"];
    phoneSanitized = json["phone_sanitized"];
    phoneSanitizedBlacklisted = json["phone_sanitized_blacklisted"];
    phoneBlacklisted = json["phone_blacklisted"];
    mobileBlacklisted = json["mobile_blacklisted"];
    image1024 = json["image_1024"];
    image512 = json["image_512"];
    image256 = json["image_256"];
    image128 = json["image_128"];
    activityUserId = json["activity_user_id"];
    activityTypeId = json["activity_type_id"];
    activityTypeIcon = json["activity_type_icon"];
    activitySummary = json["activity_summary"];
    ticketCount = json["ticket_count"];

    writeDate = json["write_date"];
    lastUpdate = json["__last_update"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["name"] = name;
    map["display_name"] = displayName;
    map["title"] = title;
    map["parent_id"] = parentId;
    map["parent_name"] = parentName;

    map["ref"] = ref;
    map["lang"] = lang;
    map["active_lang_count"] = activeLangCount;
    map["tz"] = tz;
    map["tz_offset"] = tzOffset;
    map["same_vat_partner_id"] = sameVatPartnerId;
    if (bankIds != null) {
      map["bank_ids"] = bankIds?.map((v) => v.toJson()).toList();
    }
    map["website"] = website;
    map["comment"] = comment;
    if (categoryId != null) {
      map["category_id"] = categoryId?.map((v) => v.toJson()).toList();
    }
    map["credit_limit"] = creditLimit;
    map["active"] = active;
    map["employee"] = employee;
    map["function"] = function;
    map["type"] = type;
    map["street"] = street;
    map["street2"] = street2;
    map["zip"] = zip;
    map["city"] = city;
    map["state_id"] = stateId;
    map["country_id"] = countryId;
    map["partner_latitude"] = partnerLatitude;
    map["partner_longitude"] = partnerLongitude;
    map["email_formatted"] = emailFormatted;
    map["mobile"] = mobile;
    map["is_company"] = isCompany;
    map["industry_id"] = industryId;
    map["company_type"] = companyType;
    map["company_id"] = companyId;
    map["color"] = color;
    if (userIds != null) {
      map["user_ids"] = userIds?.map((v) => v.toJson()).toList();
    }
    map["partner_share"] = partnerShare;
    map["contact_address"] = contactAddress;
    map["commercial_company_name"] = commercialCompanyName;
    map["company_name"] = companyName;
    map["barcode"] = barcode;
    map["im_status"] = imStatus;
    map["email"] = email;
    map["phone"] = phone;
    if (channelIds != null) {
      map["channel_ids"] = channelIds?.map((v) => v.toJson()).toList();
    }
    map["user_id"] = userId;
    map["contact_address_complete"] = contactAddressComplete;
    map["image_medium"] = imageMedium;
    map["signup_token"] = signupToken;
    map["signup_type"] = signupType;
    map["signup_expiration"] = signupExpiration;
    map["signup_valid"] = signupValid;
    map["signup_url"] = signupUrl;
    map["calendar_last_notif_ack"] = calendarLastNotifAck;
    map["ocn_token"] = ocnToken;
    map["partner_gid"] = partnerGid;
    map["additional_info"] = additionalInfo;
    map["credit"] = credit;
    map["debit"] = debit;
    map["debit_limit"] = debitLimit;
    map["total_invoiced"] = totalInvoiced;
    map["property_account_position_id"] = propertyAccountPositionId;
    map["property_payment_term_id"] = propertyPaymentTermId;
    map["property_supplier_payment_term_id"] = propertySupplierPaymentTermId;
    if (refCompanyIds != null) {
      map["ref_company_ids"] = refCompanyIds?.map((v) => v.toJson()).toList();
    }
    map["has_unreconciled_entries"] = hasUnreconciledEntries;
    map["last_time_entries_checked"] = lastTimeEntriesChecked;
    if (contractIds != null) {
      map["contract_ids"] = contractIds?.map((v) => v.toJson()).toList();
    }
    map["bank_account_count"] = bankAccountCount;
    map["trust"] = trust;
    map["invoice_warn"] = invoiceWarn;
    map["invoice_warn_msg"] = invoiceWarnMsg;
    map["supplier_rank"] = supplierRank;
    map["customer_rank"] = customerRank;
    map["team_id"] = teamId;
    if (opportunityIds != null) {
      map["opportunity_ids"] = opportunityIds?.map((v) => v.toJson()).toList();
    }
    if (meetingIds != null) {
      map["meeting_ids"] = meetingIds?.map((v) => v.toJson()).toList();
    }
    map["opportunity_count"] = opportunityCount;
    map["meeting_count"] = meetingCount;
    if (taskIds != null) {
      map["task_ids"] = taskIds?.map((v) => v.toJson()).toList();
    }
    map["task_count"] = taskCount;
    map["picking_warn"] = pickingWarn;
    map["picking_warn_msg"] = pickingWarnMsg;
    map["online_partner_vendor_name"] = onlinePartnerVendorName;
    map["online_partner_bank_account"] = onlinePartnerBankAccount;
    map["vat"] = vat;
    if (paymentTokenIds != null) {
      map["payment_token_ids"] =
          paymentTokenIds?.map((v) => v.toJson()).toList();
    }
    map["payment_token_count"] = paymentTokenCount;
    map["online_partner_information"] = onlinePartnerInformation;
    map["sale_order_count"] = saleOrderCount;
    map["sale_warn"] = saleWarn;
    map["sale_warn_msg"] = saleWarnMsg;
    map["dealer_seq"] = dealerSeq;
    map["is_dealer"] = isDealer;
    map["date"] = date;
    map["region"] = region;
    map["business"] = business;
    map["exp_year"] = expYear;
    map["dealer_type"] = dealerType;
    map["selling_property_experience"] = sellingPropertyExperience;
    map["scope_of_work"] = scopeOfWork;
    map["joint_visit_done"] = jointVisitDone;
    map["proposed_sales_executive"] = proposedSalesExecutive;
    map["territory"] = territory;
    map["image_1920"] = image1920;
    if (activityIds != null) {
      map["activity_ids"] = activityIds?.map((v) => v.toJson()).toList();
    }
    map["activity_state"] = activityState;
    map["activity_date_deadline"] = activityDateDeadline;
    map["activity_exception_decoration"] = activityExceptionDecoration;
    map["activity_exception_icon"] = activityExceptionIcon;
    map["email_normalized"] = emailNormalized;
    map["is_blacklisted"] = isBlacklisted;
    map["message_bounce"] = messageBounce;
    map["message_is_follower"] = messageIsFollower;
    map["message_unread"] = messageUnread;
    map["message_unread_counter"] = messageUnreadCounter;
    map["message_needaction"] = messageNeedaction;
    map["message_needaction_counter"] = messageNeedactionCounter;
    map["message_has_error"] = messageHasError;
    map["message_has_error_counter"] = messageHasErrorCounter;
    map["message_attachment_count"] = messageAttachmentCount;
    map["message_main_attachment_id"] = messageMainAttachmentId;
    if (websiteMessageIds != null) {
      map["website_message_ids"] =
          websiteMessageIds?.map((v) => v.toJson()).toList();
    }
    map["message_has_sms_error"] = messageHasSmsError;
    map["phone_sanitized"] = phoneSanitized;
    map["phone_sanitized_blacklisted"] = phoneSanitizedBlacklisted;
    map["phone_blacklisted"] = phoneBlacklisted;
    map["mobile_blacklisted"] = mobileBlacklisted;
    map["image_1024"] = image1024;
    map["image_512"] = image512;
    map["image_256"] = image256;
    map["image_128"] = image128;
    map["activity_user_id"] = activityUserId;
    map["activity_type_id"] = activityTypeId;
    map["activity_type_icon"] = activityTypeIcon;
    map["activity_summary"] = activitySummary;
    map["ticket_count"] = ticketCount;
    map["create_date"] = createDate;
    map["write_date"] = writeDate;
    map["__last_update"] = lastUpdate;
    return map;
  }
}
