.class public Lcom/zendesk/api/model/macros/MacroResult;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "MacroResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/macros/MacroResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_ASSIGNEE_ID:Ljava/lang/String; = "assignee_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "result.ticket.assignee_id"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field private static final KEY_COMMENT:Ljava/lang/String; = "comment"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "result.comment"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
        type = Ljava/lang/Object;
    .end annotation
.end field

.field private static final KEY_COMMENT_BODY:Ljava/lang/String; = "body"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "result.comment.body"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
        type = Ljava/lang/String;
    .end annotation
.end field

.field private static final KEY_COMMENT_PUBLIC:Ljava/lang/String; = "public"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "result.comment.public"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field private static final KEY_FIELDS:Ljava/lang/String; = "fields"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "result.ticket.fields"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
        type = Ljava/util/List;
    .end annotation
.end field

.field private static final KEY_FIELD_ID:Ljava/lang/String; = "id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "result.ticket.fields.id"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->IF_PARENT:Lcom/zendesk/api/APIKeyRequired;
        type = Ljava/lang/Long;
    .end annotation
.end field

.field private static final KEY_FIELD_VALUE:Ljava/lang/String; = "value"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "result.ticket.fields.value"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
        type = Ljava/lang/String;
    .end annotation
.end field

.field private static final KEY_GROUP_ID:Ljava/lang/String; = "group_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "result.ticket.group_id"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field private static final KEY_PRIORITY:Ljava/lang/String; = "priority"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "result.ticket.priority"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
        type = Ljava/lang/String;
    .end annotation
.end field

.field private static final KEY_RESULT:Ljava/lang/String; = "result"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "result"
        type = Ljava/lang/Object;
    .end annotation
.end field

.field private static final KEY_STATUS:Ljava/lang/String; = "status"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "result.ticket.status"
        type = Ljava/lang/String;
    .end annotation
.end field

.field private static final KEY_SUBJECT:Ljava/lang/String; = "subject"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "result.ticket.subject"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
        type = Ljava/lang/String;
    .end annotation
.end field

.field private static final KEY_TAGS:Ljava/lang/String; = "tags"
    .annotation runtime Lcom/zendesk/api/APIKey;
        listOf = Ljava/lang/String;
        path = "result.ticket.tags"
        type = Ljava/util/List;
    .end annotation
.end field

.field private static final KEY_TICKET:Ljava/lang/String; = "ticket"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "result.ticket"
        type = Ljava/lang/Object;
    .end annotation
.end field

.field private static final KEY_TICKET_TYPE:Ljava/lang/String; = "type"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "result.ticket.type"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
        type = Ljava/lang/String;
    .end annotation
.end field

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private macroId:Ljava/lang/Long;

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/zendesk/api/model/macros/MacroResult;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/model/macros/MacroResult;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 0
    .parameter "macroId"
    .parameter "ticket"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/zendesk/api/model/macros/MacroResult;->macroId:Ljava/lang/Long;

    .line 73
    iput-object p2, p0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 74
    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 5

    .prologue
    .line 79
    new-instance v0, Lcom/zendesk/api/requester/MacroResultRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/macros/MacroResult;->macroId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zendesk/api/requester/MacroResultRequester;-><init>(JJ)V

    return-object v0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 26
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v10, json:Lorg/json/JSONObject;
    const-string v22, "result"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 88
    .local v12, result:Lorg/json/JSONObject;
    if-nez v12, :cond_1

    .line 89
    sget-object v22, Lcom/zendesk/api/model/macros/MacroResult;->logger:Lorg/slf4j/Logger;

    const-string v23, "Macro result not found"

    invoke-interface/range {v22 .. v23}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const-string v22, "ticket"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 95
    .local v19, ticketJSON:Lorg/json/JSONObject;
    if-nez v19, :cond_4

    .line 96
    sget-object v22, Lcom/zendesk/api/model/macros/MacroResult;->logger:Lorg/slf4j/Logger;

    const-string v23, "Macro result -> ticket not found"

    invoke-interface/range {v22 .. v23}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 163
    :cond_2
    const-string v22, "comment"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 164
    .local v3, commentObject:Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/zendesk/api/model/ticket/Ticket;->getTemporaryComment()Lcom/zendesk/api/model/ticket/audits/Comment;

    move-result-object v17

    .line 166
    .local v17, tempComment:Lcom/zendesk/api/model/ticket/audits/Comment;
    const-string v22, "body"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 167
    const-string v22, "body"

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lcom/zendesk/api/model/macros/MacroResult;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 168
    .local v21, value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gez v22, :cond_10

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/zendesk/api/model/ticket/Ticket;->getDescriptionField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 179
    .end local v21           #value:Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v22, "public"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 180
    const-string v22, "public"

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lcom/zendesk/api/model/macros/MacroResult;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/audits/Comment;->setIsPublic(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 99
    .end local v3           #commentObject:Lorg/json/JSONObject;
    .end local v17           #tempComment:Lcom/zendesk/api/model/ticket/audits/Comment;
    :cond_4
    const-string v22, "assignee_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 100
    const-string v22, "assignee_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/zendesk/api/model/macros/MacroResult;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 101
    .local v2, assigneeId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/zendesk/api/model/ticket/Ticket;->getAssigneeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 103
    .end local v2           #assigneeId:Ljava/lang/Long;
    :cond_5
    const-string v22, "priority"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/zendesk/api/model/ticket/Ticket;->getPriorityField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    if-eqz v22, :cond_6

    .line 104
    const-string v22, "priority"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/zendesk/api/model/macros/MacroResult;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 105
    .local v11, priority:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/zendesk/api/model/ticket/Ticket;->getPriorityField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 108
    .end local v11           #priority:Ljava/lang/String;
    :cond_6
    const-string v22, "type"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    if-eqz v22, :cond_7

    .line 109
    const-string v22, "type"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/zendesk/api/model/macros/MacroResult;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 110
    .local v20, ticketType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 112
    .end local v20           #ticketType:Ljava/lang/String;
    :cond_7
    const-string v22, "group_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 113
    const-string v22, "group_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/zendesk/api/model/macros/MacroResult;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 114
    .local v7, groupId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 116
    .end local v7           #groupId:Ljava/lang/Long;
    :cond_8
    const-string v22, "status"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 117
    const-string v22, "status"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/zendesk/api/model/macros/MacroResult;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 118
    .local v14, status:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/zendesk/api/model/ticket/Ticket;->getStatusField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 120
    .end local v14           #status:Ljava/lang/String;
    :cond_9
    const-string v22, "subject"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/zendesk/api/model/ticket/Ticket;->getSubjectField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    if-eqz v22, :cond_a

    .line 122
    const-string v22, "subject"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/zendesk/api/model/macros/MacroResult;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 123
    .local v15, subject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/zendesk/api/model/ticket/Ticket;->getSubjectField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 127
    .end local v15           #subject:Ljava/lang/String;
    :cond_a
    const-string v22, "tags"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 128
    const-string v22, "tags"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 129
    .local v16, tags:Lorg/json/JSONArray;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v13, sb:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_b

    .line 131
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 133
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/zendesk/api/model/ticket/Ticket;->getTagsField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 136
    .end local v8           #i:I
    .end local v13           #sb:Ljava/lang/StringBuilder;
    .end local v16           #tags:Lorg/json/JSONArray;
    :cond_c
    const-string v22, "fields"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 137
    .local v6, fields:Lorg/json/JSONArray;
    if-eqz v6, :cond_2

    .line 138
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_2

    .line 139
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 140
    .local v5, field:Lorg/json/JSONObject;
    if-eqz v5, :cond_e

    .line 141
    const-string v22, "id"

    move-object/from16 v0, v22

    invoke-static {v5, v0}, Lcom/zendesk/api/model/macros/MacroResult;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 142
    .local v9, id:Ljava/lang/Long;
    const-string v22, "value"

    move-object/from16 v0, v22

    invoke-static {v5, v0}, Lcom/zendesk/api/model/macros/MacroResult;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 143
    .restart local v21       #value:Ljava/lang/String;
    if-eqz v9, :cond_e

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/macros/MacroResult;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/zendesk/api/model/ticket/Ticket;->getCustomTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v18

    .line 146
    .local v18, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v22

    sget-object v23, Lcom/zendesk/api/model/account/TicketFieldType;->CHECKBOX:Lcom/zendesk/api/model/account/TicketFieldType;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 148
    if-eqz v21, :cond_d

    .line 149
    const-string v22, "true"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 150
    const-string v21, "1"

    .line 156
    :cond_d
    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 138
    .end local v9           #id:Ljava/lang/Long;
    .end local v18           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    .end local v21           #value:Ljava/lang/String;
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 151
    .restart local v9       #id:Ljava/lang/Long;
    .restart local v18       #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    .restart local v21       #value:Ljava/lang/String;
    :cond_f
    const-string v22, "false"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 152
    const-string v21, "0"

    goto :goto_4

    .line 171
    .end local v5           #field:Lorg/json/JSONObject;
    .end local v6           #fields:Lorg/json/JSONArray;
    .end local v8           #i:I
    .end local v9           #id:Ljava/lang/Long;
    .end local v18           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    .restart local v3       #commentObject:Lorg/json/JSONObject;
    .restart local v17       #tempComment:Lcom/zendesk/api/model/ticket/audits/Comment;
    :cond_10
    invoke-virtual/range {v17 .. v17}, Lcom/zendesk/api/model/ticket/audits/Comment;->getBody()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, currentValue:Ljava/lang/String;
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_11

    .line 173
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/audits/Comment;->setBody(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 175
    :cond_11
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/audits/Comment;->setBody(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
