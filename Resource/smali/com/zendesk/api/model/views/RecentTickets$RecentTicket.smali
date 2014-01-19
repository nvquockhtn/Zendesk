.class public Lcom/zendesk/api/model/views/RecentTickets$RecentTicket;
.super Ljava/lang/Object;
.source "RecentTickets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/views/RecentTickets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentTicket"
.end annotation


# static fields
.field private static final KEY_ASSIGNEE_ID:Ljava/lang/String; = "assignee_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "assignee_id"
        type = Ljava/lang/Long;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_COLLABORATOR_IDS:Ljava/lang/String; = "collaborator_ids"
    .annotation runtime Lcom/zendesk/api/APIKey;
        listOf = Ljava/lang/Long;
        path = "collaborator_ids"
        type = Ljava/util/List;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "created_at"
        type = Lcom/zendesk/api/model/shared/ZDDate;
    .end annotation
.end field

.field private static final KEY_DESCRIPTION:Ljava/lang/String; = "description"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "description"
        type = Ljava/lang/String;
    .end annotation
.end field

.field private static final KEY_DUE_AT:Ljava/lang/String; = "due_at"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "due_at"
        type = Lcom/zendesk/api/model/shared/ZDDate;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_EXTERNAL_ID:Ljava/lang/String; = "external_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "external_id"
        type = Ljava/lang/String;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_FIELDS:Ljava/lang/String; = "fields"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "fields"
        type = Ljava/util/List;
    .end annotation
.end field

.field private static final KEY_FORUM_TOPIC_ID:Ljava/lang/String; = "forum_topic_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "forum_topic_id"
        type = Ljava/lang/Long;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_GROUP_ID:Ljava/lang/String; = "group_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "group_id"
        type = Ljava/lang/Long;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_HAS_INCIDENTS:Ljava/lang/String; = "has_incidents"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "has_incidents"
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field private static final KEY_ID:Ljava/lang/String; = "id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field private static final KEY_ORGANIZATION_ID:Ljava/lang/String; = "organization_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "organization_id"
        type = Ljava/lang/Long;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_PRIORITY:Ljava/lang/String; = "priority"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "priority"
        type = Ljava/lang/String;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_PROBLEM_ID:Ljava/lang/String; = "problem_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "problem_id"
        type = Ljava/lang/Long;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_RECIPIENT:Ljava/lang/String; = "recipient"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "recipient"
        type = Ljava/lang/String;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_REQUESTER_ID:Ljava/lang/String; = "requester_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "requester_id"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field private static final KEY_SATISFACTION_RATING:Ljava/lang/String; = "satisfaction_rating"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "satisfaction_rating"
        type = Lcom/zendesk/api/model/ticket/SatisfactionRating;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_STATUS:Ljava/lang/String; = "status"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "status"
        type = Ljava/lang/String;
    .end annotation
.end field

.field private static final KEY_SUBJECT:Ljava/lang/String; = "subject"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subject"
        type = Ljava/lang/String;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_SUBMITTER_ID:Ljava/lang/String; = "submitter_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "submitter_id"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field private static final KEY_TAGS:Ljava/lang/String; = "tags"
    .annotation runtime Lcom/zendesk/api/APIKey;
        listOf = Ljava/lang/String;
        path = "tags"
        type = Ljava/util/List;
    .end annotation
.end field

.field private static final KEY_TYPE:Ljava/lang/String; = "type"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "type"
        type = Ljava/lang/String;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_UPDATED_AT:Ljava/lang/String; = "updated_at"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "updated_at"
        type = Lcom/zendesk/api/model/shared/ZDDate;
    .end annotation
.end field

.field private static final KEY_VALUE:Ljava/lang/String; = "value"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "fields.value"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->IF_PARENT:Lcom/zendesk/api/APIKeyRequired;
        type = Ljava/lang/String;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_VIA:Ljava/lang/String; = "via"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "via"
        type = Lcom/zendesk/api/model/shared/Via;
    .end annotation
.end field


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/views/RecentTickets;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/views/RecentTickets;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/zendesk/api/model/views/RecentTickets$RecentTicket;->this$0:Lcom/zendesk/api/model/views/RecentTickets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/api/model/views/RecentTickets$RecentTicket;Lorg/json/JSONObject;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/zendesk/api/model/views/RecentTickets$RecentTicket;->getTicket(Lorg/json/JSONObject;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    return-object v0
.end method

.method private getTicket(Lorg/json/JSONObject;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 16
    .parameter "json"

    .prologue
    .line 147
    const-string v13, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 149
    .local v11, ticketId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zendesk/api/model/views/RecentTickets$RecentTicket;->this$0:Lcom/zendesk/api/model/views/RecentTickets;

    #getter for: Lcom/zendesk/api/model/views/RecentTickets;->baseModel:Lcom/zendesk/api/model/BaseModel;
    invoke-static {v13}, Lcom/zendesk/api/model/views/RecentTickets;->access$100(Lcom/zendesk/api/model/views/RecentTickets;)Lcom/zendesk/api/model/BaseModel;

    move-result-object v13

    invoke-interface {v13}, Lcom/zendesk/api/model/BaseModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v13

    invoke-interface {v13, v11}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v8

    .line 151
    .local v8, t:Lcom/zendesk/api/model/ticket/Ticket;
    if-nez v8, :cond_1

    .line 152
    const/4 v8, 0x0

    .line 229
    .end local v8           #t:Lcom/zendesk/api/model/ticket/Ticket;
    :cond_0
    return-object v8

    .line 154
    .restart local v8       #t:Lcom/zendesk/api/model/ticket/Ticket;
    :cond_1
    const-string v13, "organization_id"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/ticket/Ticket;->setOrganizationId(Ljava/lang/Long;)V

    .line 155
    const-string v13, "updated_at"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/ticket/Ticket;->setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 156
    const-string v13, "external_id"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/ticket/Ticket;->setExternalId(Ljava/lang/String;)V

    .line 157
    const-string v13, "submitter_id"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/ticket/Ticket;->setSubmitterId(Ljava/lang/Long;)V

    .line 158
    const-string v13, "problem_id"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/ticket/Ticket;->setProblemId(Ljava/lang/Long;)V

    .line 159
    const-string v13, "forum_topic_id"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/ticket/Ticket;->setForumTopicId(Ljava/lang/Long;)V

    .line 160
    const-string v13, "recipient"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/ticket/Ticket;->setRecipient(Ljava/lang/String;)V

    .line 161
    const-string v13, "has_incidents"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/ticket/Ticket;->setHasIncidents(Ljava/lang/Boolean;)V

    .line 162
    const-string v13, "created_at"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/ticket/Ticket;->setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 164
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getRequesterField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 165
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getRequesterField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    const-string v14, "requester_id"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 167
    :cond_2
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getAssigneeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 168
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getAssigneeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    const-string v14, "assignee_id"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 170
    :cond_3
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 171
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    const-string v14, "group_id"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 173
    :cond_4
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getStatusField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 174
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getStatusField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    const-string v14, "status"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 176
    :cond_5
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getDescriptionField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 177
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getDescriptionField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    const-string v14, "description"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 179
    :cond_6
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getPriorityField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 180
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getPriorityField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    const-string v14, "priority"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 182
    :cond_7
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 183
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    const-string v14, "type"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getDueDateField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    const-string v14, "due_at"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 186
    :cond_8
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getSubjectField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 187
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getSubjectField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    const-string v14, "subject"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 190
    :cond_9
    const-string v13, "collaborator_ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 191
    .local v2, ccs:Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, ccList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/users/User;>;"
    if-eqz v2, :cond_a

    .line 193
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v5, v13, :cond_a

    .line 194
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zendesk/api/model/views/RecentTickets$RecentTicket;->this$0:Lcom/zendesk/api/model/views/RecentTickets;

    #getter for: Lcom/zendesk/api/model/views/RecentTickets;->baseModel:Lcom/zendesk/api/model/BaseModel;
    invoke-static {v13}, Lcom/zendesk/api/model/views/RecentTickets;->access$100(Lcom/zendesk/api/model/views/RecentTickets;)Lcom/zendesk/api/model/BaseModel;

    move-result-object v13

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/zendesk/api/model/users/User;->getUser(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 197
    .end local v5           #i:I
    :cond_a
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getCollaboratorsField()Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->setValue(Ljava/util/List;)V

    .line 199
    const-string v13, "tags"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 200
    .local v9, tagsArray:Lorg/json/JSONArray;
    if-eqz v9, :cond_c

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v5, v13, :cond_b

    .line 203
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 205
    :cond_b
    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getTagsField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v13

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 208
    .end local v5           #i:I
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_c
    const-string v13, "via"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 209
    .local v12, viaJSON:Lorg/json/JSONObject;
    if-eqz v12, :cond_d

    .line 210
    new-instance v13, Lcom/zendesk/api/model/shared/Via;

    invoke-direct {v13, v12}, Lcom/zendesk/api/model/shared/Via;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/ticket/Ticket;->setVia(Lcom/zendesk/api/model/shared/Via;)V

    .line 213
    :cond_d
    const-string v13, "satisfaction_rating"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 214
    .local v6, satRating:Lorg/json/JSONObject;
    if-eqz v6, :cond_e

    .line 215
    new-instance v13, Lcom/zendesk/api/model/ticket/SatisfactionRating;

    invoke-direct {v13, v6}, Lcom/zendesk/api/model/ticket/SatisfactionRating;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/ticket/Ticket;->setSatisfactionRating(Lcom/zendesk/api/model/ticket/SatisfactionRating;)V

    .line 218
    :cond_e
    const-string v13, "fields"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 219
    .local v3, entriesArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 220
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v5, v13, :cond_0

    .line 221
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 222
    .local v4, entryJson:Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketFieldId(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/ticket/Ticket;->getCustomTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v10

    .line 223
    .local v10, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    if-eqz v10, :cond_f

    .line 224
    const-string v13, "value"

    invoke-static {v4, v13}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 220
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method
