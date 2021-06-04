

class CrmModel {
  int? id;
  var name;
  var userId;
  var userEmail;
  var userLogin;
  var companyId;
  var referred;
  var description;
  var active;
  var type;
  var priority;
  var teamId;
  var stageId;
  var kanbanState;
  var activityDateDeadlineMy;
  var tagIds;
  int? color;
  double? expectedRevenue;
  double? proratedRevenue;
  var companyCurrency;
  var dateClosed;
  var dateActionLast;
  var dateOpen;
  double? dayOpen;
  double? dayClose;
  var dateLastStageUpdate;
  var dateConversion;
  var dateDeadline;
  var partnerId;
  var partnerIsBlacklisted;
  var contactName;
  var partnerName;
  var function;
  var title;
  var emailFrom;
  var phone;
  var mobile;
  var phoneMobileSearch;
  var phoneState;
  var emailState;
  var website;
  var langId;
  var street;
  var street2;
  var zip;
  var city;
  var stateId;
  var countryId;
  double? probability;
  double? automatedProbability;
  var isAutomatedProbability;
  int? meetingCount;
  var lostReason;
  var ribbonMessage;
  var wonStatus;
  double? daysToConvert;
  double? daysExceedingClosing;
  var crmChecklistIds;
  double? checklistProgress;
  int? maxRate;
  var vat;
  var ref;
  var leadScoringIds;
  double? leadScore;
  var isOpportunity;
  double? bad;
  double? unfair;
  double? fair;
  double? good;
  double? excellent;
  double? total;
  double? maxScore;
  double? minScore;
  var leadType;
  var revealId;
  var dealers;
  var dealerId;
  double? saleAmountTotal;
  int? quotationCount;
  int? saleOrderCount;
  var orderIds;
  var campaignId;
  var sourceId;
  var mediumId;
  var activityIds;
  var activityState;
  var activityUserId;
  var activityTypeId;
  var activityTypeIcon;
  var activityDateDeadline;
  var activitySummary;
  var activityExceptionDecoration;
  var activityExceptionIcon;
  var emailNormalized;
  var isBlacklisted;
  int? messageBounce;
  var emailCc;
  var messageIsFollower;
  var messageFollowerIds;
  var messagePartnerIds;
  var messageChannelIds;
  var messageIds;
  var messageUnread;
  int? messageUnreadCounter;
  var messageNeedaction;
  int? messageNeedactionCounter;
  var messageHasError;
  int? messageHasErrorCounter;
  int? messageAttachmentCount;
  var messageMainAttachmentId;
  var websiteMessageIds;
  var messageHasSmsError;
  var phoneSanitized;
  var phoneSanitizedBlacklisted;
  var phoneBlacklisted;
  var mobileBlacklisted;
  var displayName;
  var createUid;
  var createDate;
  var writeUid;
  var writeDate;
  var lastUpdate;

  CrmModel({
      this.id, 
      this.name, 
      this.userId, 
      this.userEmail, 
      this.userLogin, 
      this.companyId, 
      this.referred, 
      this.description, 
      this.active, 
      this.type, 
      this.priority, 
      this.teamId, 
      this.stageId, 
      this.kanbanState, 
      this.activityDateDeadlineMy, 
      this.tagIds, 
      this.color, 
      this.expectedRevenue, 
      this.proratedRevenue, 
      this.companyCurrency, 
      this.dateClosed, 
      this.dateActionLast, 
      this.dateOpen, 
      this.dayOpen, 
      this.dayClose, 
      this.dateLastStageUpdate, 
      this.dateConversion, 
      this.dateDeadline, 
      this.partnerId, 
      this.partnerIsBlacklisted, 
      this.contactName, 
      this.partnerName, 
      this.function, 
      this.title, 
      this.emailFrom, 
      this.phone, 
      this.mobile, 
      this.phoneMobileSearch, 
      this.phoneState, 
      this.emailState, 
      this.website, 
      this.langId, 
      this.street, 
      this.street2, 
      this.zip, 
      this.city, 
      this.stateId, 
      this.countryId, 
      this.probability, 
      this.automatedProbability, 
      this.isAutomatedProbability, 
      this.meetingCount, 
      this.lostReason, 
      this.ribbonMessage, 
      this.wonStatus, 
      this.daysToConvert, 
      this.daysExceedingClosing, 
      this.crmChecklistIds, 
      this.checklistProgress, 
      this.maxRate, 
      this.vat, 
      this.ref, 
      this.leadScoringIds, 
      this.leadScore, 
      this.isOpportunity, 
      this.bad, 
      this.unfair, 
      this.fair, 
      this.good, 
      this.excellent, 
      this.total, 
      this.maxScore, 
      this.minScore, 
      this.leadType, 
      this.revealId, 
      this.dealers, 
      this.dealerId, 
      this.saleAmountTotal, 
      this.quotationCount, 
      this.saleOrderCount, 
      this.orderIds, 
      this.campaignId, 
      this.sourceId, 
      this.mediumId, 
      this.activityIds, 
      this.activityState, 
      this.activityUserId, 
      this.activityTypeId, 
      this.activityTypeIcon, 
      this.activityDateDeadline, 
      this.activitySummary, 
      this.activityExceptionDecoration, 
      this.activityExceptionIcon, 
      this.emailNormalized, 
      this.isBlacklisted, 
      this.messageBounce, 
      this.emailCc, 
      this.messageIsFollower, 
      this.messageFollowerIds, 
      this.messagePartnerIds, 
      this.messageChannelIds, 
      this.messageIds, 
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
      this.displayName, 
      this.createUid, 
      this.createDate, 
      this.writeUid, 
      this.writeDate, 
      this.lastUpdate});

  CrmModel.fromJson(dynamic json) {
    id = json["id"];
    name = json["name"];
    userId = json["user_id"] != null ? json["user_id"] : [];
    userEmail = json["user_email"];
    userLogin = json["user_login"];
    companyId = json["company_id"] != null ? json["company_id"] : [];
    referred = json["referred"];
    description = json["description"];
    active = json["active"];
    type = json["type"];
    priority = json["priority"];
    teamId = json["team_id"] != null ? json["team_id"] : [];
    stageId = json["stage_id"] != null ? json["stage_id"] : [];
    kanbanState = json["kanban_state"];
    activityDateDeadlineMy = json["activity_date_deadline_my"];
    tagIds = json["tag_ids"];

    color = json["color"];
    expectedRevenue = json["expected_revenue"];
    proratedRevenue = json["prorated_revenue"];
    companyCurrency = json["company_currency"] != null ? json["company_currency"] : [];
    dateClosed = json["date_closed"];
    dateActionLast = json["date_action_last"];
    dateOpen = json["date_open"];
    dayOpen = json["day_open"];
    dayClose = json["day_close"];
    dateLastStageUpdate = json["date_last_stage_update"];
    dateConversion = json["date_conversion"];
    dateDeadline = json["date_deadline"];
    partnerId = json["partner_id"] != null ? json["partner_id"] : [];
    partnerIsBlacklisted = json["partner_is_blacklisted"];
    contactName = json["contact_name"];
    partnerName = json["partner_name"];
    function = json["function"];
    title = json["title"];
    emailFrom = json["email_from"];
    phone = json["phone"];
    mobile = json["mobile"];
    phoneMobileSearch = json["phone_mobile_search"];
    phoneState = json["phone_state"];
    emailState = json["email_state"];
    website = json["website"];
    langId = json["lang_id"];
    street = json["street"];
    street2 = json["street2"];
    zip = json["zip"];
    city = json["city"];
    stateId = json["state_id"];
    countryId = json["country_id"];
    probability = json["probability"];
    automatedProbability = json["automated_probability"];
    isAutomatedProbability = json["is_automated_probability"];
    meetingCount = json["meeting_count"];
    lostReason = json["lost_reason"];
    ribbonMessage = json["ribbon_message"];
    wonStatus = json["won_status"];
    daysToConvert = json["days_to_convert"];
    daysExceedingClosing = json["days_exceeding_closing"];
    crmChecklistIds = json["crm_checklist_ids"];

    checklistProgress = json["checklist_progress"];
    maxRate = json["max_rate"];
    vat = json["vat"];
    ref = json["ref"];
    leadScoringIds = json["lead_scoring_ids"] != null ? json["lead_scoring_ids"] : [];
    leadScore = json["lead_score"];
    isOpportunity = json["is_opportunity"];
    bad = json["bad"];
    unfair = json["unfair"];
    fair = json["fair"];
    good = json["good"];
    excellent = json["excellent"];
    total = json["total"];
    maxScore = json["max_score"];
    minScore = json["min_score"];
    leadType = json["lead_type"] != null ? json["lead_type"] : [];
    revealId = json["reveal_id"];
    dealers = json["dealers"] != null ? json["dealers"] : [];
    dealerId = json["dealer_id"];
    saleAmountTotal = json["sale_amount_total"];
    quotationCount = json["quotation_count"];
    saleOrderCount = json["sale_order_count"];
    orderIds = json["order_ids"];
    campaignId = json["campaign_id"];
    sourceId = json["source_id"];
    mediumId = json["medium_id"];
    activityIds = json["activity_ids"];
    activityState = json["activity_state"];
    activityUserId = json["activity_user_id"];
    activityTypeId = json["activity_type_id"];
    activityTypeIcon = json["activity_type_icon"];
    activityDateDeadline = json["activity_date_deadline"];
    activitySummary = json["activity_summary"];
    activityExceptionDecoration = json["activity_exception_decoration"];
    activityExceptionIcon = json["activity_exception_icon"];
    emailNormalized = json["email_normalized"];
    isBlacklisted = json["is_blacklisted"];
    messageBounce = json["message_bounce"];
    emailCc = json["email_cc"];
    messageIsFollower = json["message_is_follower"];
    messageFollowerIds = json["message_follower_ids"] != null ? json["message_follower_ids"] : [];
    messagePartnerIds = json["message_partner_ids"] != null ? json["message_partner_ids"] : [];
    messageChannelIds = json["message_channel_ids"];
    messageIds = json["message_ids"] != null ? json["message_ids"] : [];
    messageUnread = json["message_unread"];
    messageUnreadCounter = json["message_unread_counter"];
    messageNeedaction = json["message_needaction"];
    messageNeedactionCounter = json["message_needaction_counter"];
    messageHasError = json["message_has_error"];
    messageHasErrorCounter = json["message_has_error_counter"];
    messageAttachmentCount = json["message_attachment_count"];
    messageMainAttachmentId = json["message_main_attachment_id"];
    websiteMessageIds = json["website_message_ids"];
    messageHasSmsError = json["message_has_sms_error"];
    phoneSanitized = json["phone_sanitized"];
    phoneSanitizedBlacklisted = json["phone_sanitized_blacklisted"];
    phoneBlacklisted = json["phone_blacklisted"];
    mobileBlacklisted = json["mobile_blacklisted"];
    displayName = json["display_name"];
    createUid = json["create_uid"] != null ? json["create_uid"] : [];
    createDate = json["create_date"];
    writeUid = json["write_uid"] != null ? json["write_uid"] : [];
    writeDate = json["write_date"];
    lastUpdate = json["__last_update"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["name"] = name;
    map["user_id"] = userId;
    map["user_email"] = userEmail;
    map["user_login"] = userLogin;
    map["company_id"] = companyId;
    map["referred"] = referred;
    map["description"] = description;
    map["active"] = active;
    map["type"] = type;
    map["priority"] = priority;
    map["team_id"] = teamId;
    map["stage_id"] = stageId;
    map["kanban_state"] = kanbanState;
    map["activity_date_deadline_my"] = activityDateDeadlineMy;
    if (tagIds != null) {
      map["tag_ids"] = tagIds?.map((v) => v.toJson()).toList();
    }
    map["color"] = color;
    map["expected_revenue"] = expectedRevenue;
    map["prorated_revenue"] = proratedRevenue;
    map["company_currency"] = companyCurrency;
    map["date_closed"] = dateClosed;
    map["date_action_last"] = dateActionLast;
    map["date_open"] = dateOpen;
    map["day_open"] = dayOpen;
    map["day_close"] = dayClose;
    map["date_last_stage_update"] = dateLastStageUpdate;
    map["date_conversion"] = dateConversion;
    map["date_deadline"] = dateDeadline;
    map["partner_id"] = partnerId;
    map["partner_is_blacklisted"] = partnerIsBlacklisted;
    map["contact_name"] = contactName;
    map["partner_name"] = partnerName;
    map["function"] = function;
    map["title"] = title;
    map["email_from"] = emailFrom;
    map["phone"] = phone;
    map["mobile"] = mobile;
    map["phone_mobile_search"] = phoneMobileSearch;
    map["phone_state"] = phoneState;
    map["email_state"] = emailState;
    map["website"] = website;
    map["lang_id"] = langId;
    map["street"] = street;
    map["street2"] = street2;
    map["zip"] = zip;
    map["city"] = city;
    map["state_id"] = stateId;
    map["country_id"] = countryId;
    map["probability"] = probability;
    map["automated_probability"] = automatedProbability;
    map["is_automated_probability"] = isAutomatedProbability;
    map["meeting_count"] = meetingCount;
    map["lost_reason"] = lostReason;
    map["ribbon_message"] = ribbonMessage;
    map["won_status"] = wonStatus;
    map["days_to_convert"] = daysToConvert;
    map["days_exceeding_closing"] = daysExceedingClosing;
    if (crmChecklistIds != null) {
      map["crm_checklist_ids"] = crmChecklistIds?.map((v) => v.toJson()).toList();
    }
    map["checklist_progress"] = checklistProgress;
    map["max_rate"] = maxRate;
    map["vat"] = vat;
    map["ref"] = ref;
    map["lead_scoring_ids"] = leadScoringIds;
    map["lead_score"] = leadScore;
    map["is_opportunity"] = isOpportunity;
    map["bad"] = bad;
    map["unfair"] = unfair;
    map["fair"] = fair;
    map["good"] = good;
    map["excellent"] = excellent;
    map["total"] = total;
    map["max_score"] = maxScore;
    map["min_score"] = minScore;
    map["lead_type"] = leadType;
    map["reveal_id"] = revealId;
    map["dealers"] = dealers;
    map["dealer_id"] = dealerId;
    map["sale_amount_total"] = saleAmountTotal;
    map["quotation_count"] = quotationCount;
    map["sale_order_count"] = saleOrderCount;
    if (orderIds != null) {
      map["order_ids"] = orderIds?.map((v) => v.toJson()).toList();
    }
    map["campaign_id"] = campaignId;
    map["source_id"] = sourceId;
    map["medium_id"] = mediumId;
    if (activityIds != null) {
      map["activity_ids"] = activityIds?.map((v) => v.toJson()).toList();
    }
    map["activity_state"] = activityState;
    map["activity_user_id"] = activityUserId;
    map["activity_type_id"] = activityTypeId;
    map["activity_type_icon"] = activityTypeIcon;
    map["activity_date_deadline"] = activityDateDeadline;
    map["activity_summary"] = activitySummary;
    map["activity_exception_decoration"] = activityExceptionDecoration;
    map["activity_exception_icon"] = activityExceptionIcon;
    map["email_normalized"] = emailNormalized;
    map["is_blacklisted"] = isBlacklisted;
    map["message_bounce"] = messageBounce;
    map["email_cc"] = emailCc;
    map["message_is_follower"] = messageIsFollower;
    map["message_follower_ids"] = messageFollowerIds;
    map["message_partner_ids"] = messagePartnerIds;
    if (messageChannelIds != null) {
      map["message_channel_ids"] = messageChannelIds?.map((v) => v.toJson()).toList();
    }
    map["message_ids"] = messageIds;
    map["message_unread"] = messageUnread;
    map["message_unread_counter"] = messageUnreadCounter;
    map["message_needaction"] = messageNeedaction;
    map["message_needaction_counter"] = messageNeedactionCounter;
    map["message_has_error"] = messageHasError;
    map["message_has_error_counter"] = messageHasErrorCounter;
    map["message_attachment_count"] = messageAttachmentCount;
    map["message_main_attachment_id"] = messageMainAttachmentId;
    if (websiteMessageIds != null) {
      map["website_message_ids"] = websiteMessageIds?.map((v) => v.toJson()).toList();
    }
    map["message_has_sms_error"] = messageHasSmsError;
    map["phone_sanitized"] = phoneSanitized;
    map["phone_sanitized_blacklisted"] = phoneSanitizedBlacklisted;
    map["phone_blacklisted"] = phoneBlacklisted;
    map["mobile_blacklisted"] = mobileBlacklisted;
    map["display_name"] = displayName;
    map["create_uid"] = createUid;
    map["create_date"] = createDate;
    map["write_uid"] = writeUid;
    map["write_date"] = writeDate;
    map["__last_update"] = lastUpdate;
    return map;
  }

}