

class HelpDeskModel {
  int? id;
  var campaignId;
  var sourceId;
  var mediumId;
  List<dynamic>? activityIds;
  var activityState;
  var activityDateDeadline;
  var activityExceptionDecoration;
  var activityExceptionIcon;
  var emailCc;
  var messageIsFollower;
  List<int>? messageFollowerIds;
  List<int>? messagePartnerIds;
  List<dynamic>? messageChannelIds;
  List<int>? messageIds;
  var messageUnread;
  int? messageUnreadCounter;
  var messageNeedaction;
  int? messageNeedactionCounter;
  var messageHasError;
  int? messageHasErrorCounter;
  int? messageAttachmentCount;
  var messageMainAttachmentId;
  var messageHasSmsError;
  List<dynamic>? ratingIds;
  double? ratingLastValue;
  int? ratingCount;
  double? ratingAvg;
  String? accessUrl;
  String? accessToken;
  String? accessWarning;
  var activityUserId;
  var activityTypeId;
  var activityTypeIcon;
  var activitySummary;
  var ratingLastFeedback;
  var ratingLastImage;
  String? name;
  List<int>? teamId;
  String? description;
  var active;
  List<int>? ticketTypeId;
  List<int>? tagIds;
  List<int>? companyId;
  int? color;
  String? kanbanState;
  String? kanbanStateLabel;
  String? legendBlocked;
  String? legendDone;
  String? legendNormal;
  List<int>? domainUserIds;
  List<int>? userId;
  List<int>? partnerId;
  int? partnerTicketCount;
  int? attachmentNumber;
  var isSelfAssigned;
  String? partnerName;
  var partnerEmail;
  var closedByPartner;
  var email;
  String? priority;
  List<int>? stageId;
  String? dateLastStageUpdate;
  String? assignDate;
  int? assignHours;
  var closeDate;
  int? closeHours;
  int? openHours;
  List<dynamic>? slaIds;
  List<dynamic>? slaStatusIds;
  var slaReachedLate;
  var slaDeadline;
  var slaFail;
  var slaSuccess;
  var useCreditNotes;
  var useCoupons;
  var useProductReturns;
  var useProductRepairs;
  List<dynamic>? websiteMessageIds;
  List<int>? commercialPartnerId;
  var saleOrderId;
  String? displayName;
  List<int>? createUid;
  String? createDate;
  List<int>? writeUid;
  String? writeDate;
  String? lastUpdate;

  HelpDeskModel({
      this.id, 
      this.campaignId, 
      this.sourceId, 
      this.mediumId, 
      this.activityIds, 
      this.activityState, 
      this.activityDateDeadline, 
      this.activityExceptionDecoration, 
      this.activityExceptionIcon, 
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
      this.messageHasSmsError, 
      this.ratingIds, 
      this.ratingLastValue, 
      this.ratingCount, 
      this.ratingAvg, 
      this.accessUrl, 
      this.accessToken, 
      this.accessWarning, 
      this.activityUserId, 
      this.activityTypeId, 
      this.activityTypeIcon, 
      this.activitySummary, 
      this.ratingLastFeedback, 
      this.ratingLastImage, 
      this.name, 
      this.teamId, 
      this.description, 
      this.active, 
      this.ticketTypeId, 
      this.tagIds, 
      this.companyId, 
      this.color, 
      this.kanbanState, 
      this.kanbanStateLabel, 
      this.legendBlocked, 
      this.legendDone, 
      this.legendNormal, 
      this.domainUserIds, 
      this.userId, 
      this.partnerId, 
      this.partnerTicketCount, 
      this.attachmentNumber, 
      this.isSelfAssigned, 
      this.partnerName, 
      this.partnerEmail, 
      this.closedByPartner, 
      this.email, 
      this.priority, 
      this.stageId, 
      this.dateLastStageUpdate, 
      this.assignDate, 
      this.assignHours, 
      this.closeDate, 
      this.closeHours, 
      this.openHours, 
      this.slaIds, 
      this.slaStatusIds, 
      this.slaReachedLate, 
      this.slaDeadline, 
      this.slaFail, 
      this.slaSuccess, 
      this.useCreditNotes, 
      this.useCoupons, 
      this.useProductReturns, 
      this.useProductRepairs, 
      this.websiteMessageIds, 
      this.commercialPartnerId, 
      this.saleOrderId, 
      this.displayName, 
      this.createUid, 
      this.createDate, 
      this.writeUid, 
      this.writeDate, 
      this.lastUpdate});

  HelpDeskModel.fromJson(dynamic json) {
    id = json["id"];
    campaignId = json["campaign_id"];
    sourceId = json["source_id"];
    mediumId = json["medium_id"];
    activityState = json["activity_state"];
    activityDateDeadline = json["activity_date_deadline"];
    activityExceptionDecoration = json["activity_exception_decoration"];
    activityExceptionIcon = json["activity_exception_icon"];
    emailCc = json["email_cc"];
    messageIsFollower = json["message_is_follower"];
    messageFollowerIds = json["message_follower_ids"] != null ? json["message_follower_ids"].cast<int>() : [];
    messagePartnerIds = json["message_partner_ids"] != null ? json["message_partner_ids"].cast<int>() : [];

    messageIds = json["message_ids"] != null ? json["message_ids"].cast<int>() : [];
    messageUnread = json["message_unread"];
    messageUnreadCounter = json["message_unread_counter"];
    messageNeedaction = json["message_needaction"];
    messageNeedactionCounter = json["message_needaction_counter"];
    messageHasError = json["message_has_error"];
    messageHasErrorCounter = json["message_has_error_counter"];
    messageAttachmentCount = json["message_attachment_count"];
    messageMainAttachmentId = json["message_main_attachment_id"];
    messageHasSmsError = json["message_has_sms_error"];

    ratingLastValue = json["rating_last_value"];
    ratingCount = json["rating_count"];
    ratingAvg = json["rating_avg"];
    accessUrl = json["access_url"];
    accessToken = json["access_token"];
    accessWarning = json["access_warning"];
    activityUserId = json["activity_user_id"];
    activityTypeId = json["activity_type_id"];
    activityTypeIcon = json["activity_type_icon"];
    activitySummary = json["activity_summary"];
    ratingLastFeedback = json["rating_last_feedback"];
    ratingLastImage = json["rating_last_image"];
    name = json["name"];
    teamId = json["team_id"] != null ? json["team_id"].cast<int>() : [];
    description = json["description"];
    active = json["active"];
    ticketTypeId = json["ticket_type_id"] != null ? json["ticket_type_id"].cast<int>() : [];
    tagIds = json["tag_ids"] != null ? json["tag_ids"].cast<int>() : [];
    companyId = json["company_id"] != null ? json["company_id"].cast<int>() : [];
    color = json["color"];
    kanbanState = json["kanban_state"];
    kanbanStateLabel = json["kanban_state_label"];
    legendBlocked = json["legend_blocked"];
    legendDone = json["legend_done"];
    legendNormal = json["legend_normal"];
    domainUserIds = json["domain_user_ids"] != null ? json["domain_user_ids"].cast<int>() : [];
    userId = json["user_id"] != null ? json["user_id"].cast<int>() : [];
    partnerId = json["partner_id"] != null ? json["partner_id"].cast<int>() : [];
    partnerTicketCount = json["partner_ticket_count"];
    attachmentNumber = json["attachment_number"];
    isSelfAssigned = json["is_self_assigned"];
    partnerName = json["partner_name"];
    partnerEmail = json["partner_email"];
    closedByPartner = json["closed_by_partner"];
    email = json["email"];
    priority = json["priority"];
    stageId = json["stage_id"] != null ? json["stage_id"].cast<int>() : [];
    dateLastStageUpdate = json["date_last_stage_update"];
    assignDate = json["assign_date"];
    assignHours = json["assign_hours"];
    closeDate = json["close_date"];
    closeHours = json["close_hours"];
    openHours = json["open_hours"];

    slaReachedLate = json["sla_reached_late"];
    slaDeadline = json["sla_deadline"];
    slaFail = json["sla_fail"];
    slaSuccess = json["sla_success"];
    useCreditNotes = json["use_credit_notes"];
    useCoupons = json["use_coupons"];
    useProductReturns = json["use_product_returns"];
    useProductRepairs = json["use_product_repairs"];

    commercialPartnerId = json["commercial_partner_id"] != null ? json["commercial_partner_id"].cast<int>() : [];
    saleOrderId = json["sale_order_id"];
    displayName = json["display_name"];
    createUid = json["create_uid"] != null ? json["create_uid"].cast<int>() : [];
    createDate = json["create_date"];
    writeUid = json["write_uid"] != null ? json["write_uid"].cast<int>() : [];
    writeDate = json["write_date"];
    lastUpdate = json["__last_update"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["campaign_id"] = campaignId;
    map["source_id"] = sourceId;
    map["medium_id"] = mediumId;
    if (activityIds != null) {
      map["activity_ids"] = activityIds?.map((v) => v.toJson()).toList();
    }
    map["activity_state"] = activityState;
    map["activity_date_deadline"] = activityDateDeadline;
    map["activity_exception_decoration"] = activityExceptionDecoration;
    map["activity_exception_icon"] = activityExceptionIcon;
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
    map["message_has_sms_error"] = messageHasSmsError;
    if (ratingIds != null) {
      map["rating_ids"] = ratingIds?.map((v) => v.toJson()).toList();
    }
    map["rating_last_value"] = ratingLastValue;
    map["rating_count"] = ratingCount;
    map["rating_avg"] = ratingAvg;
    map["access_url"] = accessUrl;
    map["access_token"] = accessToken;
    map["access_warning"] = accessWarning;
    map["activity_user_id"] = activityUserId;
    map["activity_type_id"] = activityTypeId;
    map["activity_type_icon"] = activityTypeIcon;
    map["activity_summary"] = activitySummary;
    map["rating_last_feedback"] = ratingLastFeedback;
    map["rating_last_image"] = ratingLastImage;
    map["name"] = name;
    map["team_id"] = teamId;
    map["description"] = description;
    map["active"] = active;
    map["ticket_type_id"] = ticketTypeId;
    map["tag_ids"] = tagIds;
    map["company_id"] = companyId;
    map["color"] = color;
    map["kanban_state"] = kanbanState;
    map["kanban_state_label"] = kanbanStateLabel;
    map["legend_blocked"] = legendBlocked;
    map["legend_done"] = legendDone;
    map["legend_normal"] = legendNormal;
    map["domain_user_ids"] = domainUserIds;
    map["user_id"] = userId;
    map["partner_id"] = partnerId;
    map["partner_ticket_count"] = partnerTicketCount;
    map["attachment_number"] = attachmentNumber;
    map["is_self_assigned"] = isSelfAssigned;
    map["partner_name"] = partnerName;
    map["partner_email"] = partnerEmail;
    map["closed_by_partner"] = closedByPartner;
    map["email"] = email;
    map["priority"] = priority;
    map["stage_id"] = stageId;
    map["date_last_stage_update"] = dateLastStageUpdate;
    map["assign_date"] = assignDate;
    map["assign_hours"] = assignHours;
    map["close_date"] = closeDate;
    map["close_hours"] = closeHours;
    map["open_hours"] = openHours;
    if (slaIds != null) {
      map["sla_ids"] = slaIds?.map((v) => v.toJson()).toList();
    }
    if (slaStatusIds != null) {
      map["sla_status_ids"] = slaStatusIds?.map((v) => v.toJson()).toList();
    }
    map["sla_reached_late"] = slaReachedLate;
    map["sla_deadline"] = slaDeadline;
    map["sla_fail"] = slaFail;
    map["sla_success"] = slaSuccess;
    map["use_credit_notes"] = useCreditNotes;
    map["use_coupons"] = useCoupons;
    map["use_product_returns"] = useProductReturns;
    map["use_product_repairs"] = useProductRepairs;
    if (websiteMessageIds != null) {
      map["website_message_ids"] = websiteMessageIds?.map((v) => v.toJson()).toList();
    }
    map["commercial_partner_id"] = commercialPartnerId;
    map["sale_order_id"] = saleOrderId;
    map["display_name"] = displayName;
    map["create_uid"] = createUid;
    map["create_date"] = createDate;
    map["write_uid"] = writeUid;
    map["write_date"] = writeDate;
    map["__last_update"] = lastUpdate;
    return map;
  }

}