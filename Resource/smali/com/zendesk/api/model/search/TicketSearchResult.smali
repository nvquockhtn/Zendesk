.class public Lcom/zendesk/api/model/search/TicketSearchResult;
.super Ljava/lang/Object;
.source "TicketSearchResult.java"


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
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
        type = Ljava/util/List;
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
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
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
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
        type = Ljava/lang/String;
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
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
        type = Lcom/zendesk/api/model/ticket/SatisfactionRating;
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
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
        type = Ljava/lang/String;
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
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
        type = Ljava/lang/String;
    .end annotation
.end field

.field private static final KEY_VIA:Ljava/lang/String; = "via"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "via"
        type = Lcom/zendesk/api/model/shared/Via;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTicket(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 16
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 84
    const-string v14, "id"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 85
    .local v6, id:Ljava/lang/Long;
    if-nez v6, :cond_1

    const/4 v12, 0x0

    .line 158
    :cond_0
    return-object v12

    .line 87
    :cond_1
    invoke-interface/range {p0 .. p0}, Lcom/zendesk/api/model/BaseModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v14

    invoke-interface {v14, v6}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v12

    .line 89
    .local v12, ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-virtual {v12}, Lcom/zendesk/api/model/ticket/Ticket;->getAssigneeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v14

    const-string v15, "assignee_id"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 90
    const-string v14, "created_at"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/zendesk/api/model/ticket/Ticket;->setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 91
    invoke-virtual {v12}, Lcom/zendesk/api/model/ticket/Ticket;->getDescriptionField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v14

    const-string v15, "description"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v12}, Lcom/zendesk/api/model/ticket/Ticket;->getDueDateField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 93
    invoke-virtual {v12}, Lcom/zendesk/api/model/ticket/Ticket;->getDueDateField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v14

    const-string v15, "due_at"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 95
    :cond_2
    const-string v14, "external_id"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/zendesk/api/model/ticket/Ticket;->setExternalId(Ljava/lang/String;)V

    .line 96
    const-string v14, "forum_topic_id"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/zendesk/api/model/ticket/Ticket;->setForumTopicId(Ljava/lang/Long;)V

    .line 97
    invoke-virtual {v12}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v14

    const-string v15, "group_id"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 98
    const-string v14, "has_incidents"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/zendesk/api/model/ticket/Ticket;->setHasIncidents(Ljava/lang/Boolean;)V

    .line 99
    const-string v14, "organization_id"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/zendesk/api/model/ticket/Ticket;->setOrganizationId(Ljava/lang/Long;)V

    .line 100
    invoke-virtual {v12}, Lcom/zendesk/api/model/ticket/Ticket;->getPriorityField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 101
    invoke-virtual {v12}, Lcom/zendesk/api/model/ticket/Ticket;->getPriorityField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v14

    const-string v15, "priority"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 103
    :cond_3
    const-string v14, "problem_id"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/zendesk/api/model/ticket/Ticket;->setProblemId(Ljava/lang/Long;)V

    .line 104
    const-string v14, "recipient"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/zendesk/api/model/ticket/Ticket;->setRecipient(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v12}, Lcom/zendesk/api/model/ticket/Ticket;->getRequesterField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v14

    const-string v15, "requester_id"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v12}, Lcom/zendesk/api/model/ticket/Ticket;->getStatusField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v14

    const-string v15, "status"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v12}, Lcom/zendesk/api/model/ticket/Ticket;->getSubjectField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 108
    invoke-virtual {v12}, Lcom/zendesk/api/model/ticket/Ticket;->getSubjectField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v14

    const-string v15, "subject"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 110
    :cond_4
    const-string v14, "submitter_id"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/zendesk/api/model/ticket/Ticket;->setSubmitterId(Ljava/lang/Long;)V

    .line 111
    const-string v14, "updated_at"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/zendesk/api/model/ticket/Ticket;->setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 114
    invoke-virtual {v12}, Lcom/zendesk/api/model/ticket/Ticket;->getCollaboratorsField()Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 116
    const-string v14, "collaborator_ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 117
    .local v2, ccs:Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v1, ccList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/users/User;>;"
    if-eqz v2, :cond_5

    .line 119
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_5

    .line 120
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/zendesk/api/model/users/User;->getUser(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 123
    .end local v5           #i:I
    :cond_5
    invoke-virtual {v12}, Lcom/zendesk/api/model/ticket/Ticket;->getCollaboratorsField()Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->setValue(Ljava/util/List;)V

    .line 126
    .end local v1           #ccList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/users/User;>;"
    .end local v2           #ccs:Lorg/json/JSONArray;
    :cond_6
    const-string v14, "tags"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 127
    .local v10, tagsArray:Lorg/json/JSONArray;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v9, sb:Ljava/lang/StringBuilder;
    if-eqz v10, :cond_8

    .line 129
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_8

    .line 130
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, s:Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 132
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 136
    .end local v5           #i:I
    .end local v7           #s:Ljava/lang/String;
    :cond_8
    invoke-virtual {v12}, Lcom/zendesk/api/model/ticket/Ticket;->getTagsField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v14

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 138
    const-string v14, "satisfaction_rating"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 139
    .local v8, satRating:Lorg/json/JSONObject;
    if-eqz v8, :cond_9

    .line 140
    new-instance v14, Lcom/zendesk/api/model/ticket/SatisfactionRating;

    invoke-direct {v14, v8}, Lcom/zendesk/api/model/ticket/SatisfactionRating;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v12, v14}, Lcom/zendesk/api/model/ticket/Ticket;->setSatisfactionRating(Lcom/zendesk/api/model/ticket/SatisfactionRating;)V

    .line 143
    :cond_9
    const-string v14, "via"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 144
    .local v13, viaJSON:Lorg/json/JSONObject;
    if-eqz v13, :cond_a

    .line 145
    new-instance v14, Lcom/zendesk/api/model/shared/Via;

    invoke-direct {v14, v13}, Lcom/zendesk/api/model/shared/Via;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v12, v14}, Lcom/zendesk/api/model/ticket/Ticket;->setVia(Lcom/zendesk/api/model/shared/Via;)V

    .line 148
    :cond_a
    const-string v14, "fields"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 149
    .local v3, entriesArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 150
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_0

    .line 151
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 152
    .local v4, entryJson:Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketFieldId(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/zendesk/api/model/ticket/Ticket;->getCustomTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v11

    .line 153
    .local v11, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    if-eqz v11, :cond_b

    .line 154
    const-string v14, "value"

    invoke-static {v4, v14}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 150
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method
