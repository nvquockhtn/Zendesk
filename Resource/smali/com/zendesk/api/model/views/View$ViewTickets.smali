.class public Lcom/zendesk/api/model/views/View$ViewTickets;
.super Lcom/zendesk/api/model/ZDPagingModelObject;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/views/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewTickets"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDPagingModelObject",
        "<",
        "Lcom/zendesk/api/model/ticket/Ticket;",
        "Lcom/zendesk/api/model/views/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_ASSIGNEE:Ljava/lang/String; = "assignee_id"

.field private static final KEY_CUSTOM_FIELDS:Ljava/lang/String; = "custom_fields"

.field private static final KEY_CUSTOM_FIELDS_ID:Ljava/lang/String; = "id"

.field private static final KEY_CUSTOM_FIELD_NAME:Ljava/lang/String; = "name"

.field private static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final KEY_DUE_DATE:Ljava/lang/String; = "due_at"

.field private static final KEY_GROUP:Ljava/lang/String; = "group_id"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_LAST_COMMENT:Ljava/lang/String; = "last_comment"

.field private static final KEY_ORGANIZATION_ID:Ljava/lang/String; = "organization_id"

.field private static final KEY_PRIORITY:Ljava/lang/String; = "priority"

.field private static final KEY_REQUESTER:Ljava/lang/String; = "requester_id"

.field private static final KEY_SATISFACTION_RATING:Ljava/lang/String; = "satisfaction_rating"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_SUBJECT:Ljava/lang/String; = "subject"

.field private static final KEY_TICKET:Ljava/lang/String; = "ticket"

.field private static final KEY_TICKET_TYPE_ID:Ljava/lang/String; = "type"

.field private static final KEY_USERS:Ljava/lang/String; = "users"

.field private static final KEY_USER_NAME:Ljava/lang/String; = "name"


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/views/View;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/views/View;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/zendesk/api/model/views/View$ViewTickets;->this$0:Lcom/zendesk/api/model/views/View;

    invoke-direct {p0}, Lcom/zendesk/api/model/ZDPagingModelObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 3

    .prologue
    .line 606
    new-instance v0, Lcom/zendesk/api/requester/ViewTicketsRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/views/View$ViewTickets;->this$0:Lcom/zendesk/api/model/views/View;

    #getter for: Lcom/zendesk/api/model/views/View;->id:Ljava/lang/Long;
    invoke-static {v1}, Lcom/zendesk/api/model/views/View;->access$300(Lcom/zendesk/api/model/views/View;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zendesk/api/model/views/View$ViewTickets;->getPendingPage()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/requester/ViewTicketsRequester;-><init>(Ljava/lang/Long;I)V

    return-object v0
.end method

.method public getReportedCount()I
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/zendesk/api/model/views/View$ViewTickets;->this$0:Lcom/zendesk/api/model/views/View;

    #getter for: Lcom/zendesk/api/model/views/View;->count:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/zendesk/api/model/views/View;->access$000(Lcom/zendesk/api/model/views/View;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/zendesk/api/model/views/View$ViewTickets;->this$0:Lcom/zendesk/api/model/views/View;

    #getter for: Lcom/zendesk/api/model/views/View;->count:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/zendesk/api/model/views/View;->access$000(Lcom/zendesk/api/model/views/View;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 601
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 25
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 495
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 496
    .local v6, json:Lorg/json/JSONObject;
    const-string v22, "rows"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 498
    .local v9, rows:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/views/View$ViewTickets;->this$0:Lcom/zendesk/api/model/views/View;

    move-object/from16 v22, v0

    const-string v23, "count"

    move-object/from16 v0, v23

    invoke-static {v6, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    #setter for: Lcom/zendesk/api/model/views/View;->count:Ljava/lang/Integer;
    invoke-static/range {v22 .. v23}, Lcom/zendesk/api/model/views/View;->access$002(Lcom/zendesk/api/model/views/View;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 500
    const/4 v13, 0x0

    .line 501
    .local v13, startIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/zendesk/api/model/views/View$ViewTickets;->getCurrentPage()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/views/View$ViewTickets;->listItems:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v13

    .line 505
    :cond_0
    if-eqz v9, :cond_a

    .line 507
    const-string v22, "users"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 509
    .local v21, users:Lorg/json/JSONArray;
    if-eqz v21, :cond_1

    .line 511
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v4, v0, :cond_1

    .line 513
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    .line 514
    .local v20, userJSON:Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 515
    .local v19, userId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/views/View$ViewTickets;->this$0:Lcom/zendesk/api/model/views/View;

    move-object/from16 v22, v0

    #getter for: Lcom/zendesk/api/model/views/View;->baseModel:Lcom/zendesk/api/model/BaseModel;
    invoke-static/range {v22 .. v22}, Lcom/zendesk/api/model/views/View;->access$100(Lcom/zendesk/api/model/views/View;)Lcom/zendesk/api/model/BaseModel;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/zendesk/api/model/BaseModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v18

    .line 516
    .local v18, u:Lcom/zendesk/api/model/users/User;
    const-string v22, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/zendesk/api/model/views/View$ViewTickets;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/users/User;->setName(Ljava/lang/String;)V

    .line 511
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 520
    .end local v4           #i:I
    .end local v18           #u:Lcom/zendesk/api/model/users/User;
    .end local v19           #userId:Ljava/lang/Long;
    .end local v20           #userJSON:Lorg/json/JSONObject;
    :cond_1
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v4, v0, :cond_a

    .line 522
    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 524
    .local v8, row:Lorg/json/JSONObject;
    const-string v22, "ticket"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 526
    .local v17, ticketJSON:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/views/View$ViewTickets;->this$0:Lcom/zendesk/api/model/views/View;

    move-object/from16 v22, v0

    #getter for: Lcom/zendesk/api/model/views/View;->baseModel:Lcom/zendesk/api/model/BaseModel;
    invoke-static/range {v22 .. v22}, Lcom/zendesk/api/model/views/View;->access$100(Lcom/zendesk/api/model/views/View;)Lcom/zendesk/api/model/BaseModel;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/zendesk/api/model/BaseModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v22

    const-string v23, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v14

    .line 528
    .local v14, t:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-virtual {v14}, Lcom/zendesk/api/model/ticket/Ticket;->getAssigneeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    const-string v23, "assignee_id"

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lcom/zendesk/api/model/views/View$ViewTickets;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 529
    invoke-virtual {v14}, Lcom/zendesk/api/model/ticket/Ticket;->getRequesterField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    const-string v23, "requester_id"

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lcom/zendesk/api/model/views/View$ViewTickets;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 530
    invoke-virtual {v14}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    const-string v23, "group_id"

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lcom/zendesk/api/model/views/View$ViewTickets;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 532
    invoke-virtual {v14}, Lcom/zendesk/api/model/ticket/Ticket;->getDescriptionField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    const-string v23, "description"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/zendesk/api/model/views/View$ViewTickets;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 533
    invoke-virtual {v14}, Lcom/zendesk/api/model/ticket/Ticket;->getStatusField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    const-string v23, "status"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/zendesk/api/model/views/View$ViewTickets;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 534
    const-string v22, "created"

    move-object/from16 v0, v22

    invoke-static {v8, v0}, Lcom/zendesk/api/model/views/View$ViewTickets;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/zendesk/api/model/ticket/Ticket;->setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 535
    const-string v22, "updated"

    move-object/from16 v0, v22

    invoke-static {v8, v0}, Lcom/zendesk/api/model/views/View$ViewTickets;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/zendesk/api/model/ticket/Ticket;->setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 536
    const-string v22, "organization_id"

    move-object/from16 v0, v22

    invoke-static {v8, v0}, Lcom/zendesk/api/model/views/View$ViewTickets;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/zendesk/api/model/ticket/Ticket;->setOrganizationId(Ljava/lang/Long;)V

    .line 537
    invoke-virtual {v14}, Lcom/zendesk/api/model/ticket/Ticket;->getSubjectField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    if-eqz v22, :cond_2

    .line 538
    invoke-virtual {v14}, Lcom/zendesk/api/model/ticket/Ticket;->getSubjectField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    const-string v23, "subject"

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lcom/zendesk/api/model/views/View$ViewTickets;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 541
    :cond_2
    invoke-virtual {v14}, Lcom/zendesk/api/model/ticket/Ticket;->getPriorityField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    if-eqz v22, :cond_3

    .line 542
    invoke-virtual {v14}, Lcom/zendesk/api/model/ticket/Ticket;->getPriorityField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    const-string v23, "priority"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/zendesk/api/model/views/View$ViewTickets;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 544
    :cond_3
    invoke-virtual {v14}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    if-eqz v22, :cond_4

    .line 545
    invoke-virtual {v14}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    const-string v23, "type"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/zendesk/api/model/views/View$ViewTickets;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 546
    invoke-virtual {v14}, Lcom/zendesk/api/model/ticket/Ticket;->getDueDateField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    if-eqz v22, :cond_4

    .line 547
    invoke-virtual {v14}, Lcom/zendesk/api/model/ticket/Ticket;->getDueDateField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v22

    const-string v23, "due_at"

    move-object/from16 v0, v23

    invoke-static {v6, v0}, Lcom/zendesk/api/model/views/View$ViewTickets;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 550
    :cond_4
    const-string v22, "satisfaction_rating"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 551
    .local v10, satRating:Lorg/json/JSONObject;
    if-eqz v10, :cond_5

    .line 552
    new-instance v11, Lcom/zendesk/api/model/ticket/SatisfactionRating;

    invoke-direct {v11, v10}, Lcom/zendesk/api/model/ticket/SatisfactionRating;-><init>(Lorg/json/JSONObject;)V

    .line 553
    .local v11, satisfactionRating:Lcom/zendesk/api/model/ticket/SatisfactionRating;
    invoke-virtual {v14, v11}, Lcom/zendesk/api/model/ticket/Ticket;->setSatisfactionRating(Lcom/zendesk/api/model/ticket/SatisfactionRating;)V

    .line 556
    .end local v11           #satisfactionRating:Lcom/zendesk/api/model/ticket/SatisfactionRating;
    :cond_5
    const-string v22, "satisfaction_score"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 557
    .local v12, satisfactionScore:Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 558
    new-instance v11, Lcom/zendesk/api/model/ticket/SatisfactionRating;

    invoke-direct {v11, v12}, Lcom/zendesk/api/model/ticket/SatisfactionRating;-><init>(Ljava/lang/String;)V

    .line 559
    .restart local v11       #satisfactionRating:Lcom/zendesk/api/model/ticket/SatisfactionRating;
    invoke-virtual {v14, v11}, Lcom/zendesk/api/model/ticket/Ticket;->setSatisfactionRating(Lcom/zendesk/api/model/ticket/SatisfactionRating;)V

    .line 562
    .end local v11           #satisfactionRating:Lcom/zendesk/api/model/ticket/SatisfactionRating;
    :cond_6
    const-string v22, "last_comment"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 563
    .local v7, lastComment:Lorg/json/JSONObject;
    if-eqz v7, :cond_7

    .line 564
    new-instance v22, Lcom/zendesk/api/model/ticket/LastComment;

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Lcom/zendesk/api/model/ticket/LastComment;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/zendesk/api/model/ticket/Ticket;->setLastComment(Lcom/zendesk/api/model/ticket/LastComment;)V

    .line 566
    :cond_7
    const-string v22, "custom_fields"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 567
    .local v3, customFields:Lorg/json/JSONArray;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v22

    if-lez v22, :cond_9

    .line 569
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_9

    .line 570
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 571
    .local v2, customField:Lorg/json/JSONObject;
    if-eqz v2, :cond_8

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/views/View$ViewTickets;->this$0:Lcom/zendesk/api/model/views/View;

    move-object/from16 v22, v0

    #getter for: Lcom/zendesk/api/model/views/View;->baseModel:Lcom/zendesk/api/model/BaseModel;
    invoke-static/range {v22 .. v22}, Lcom/zendesk/api/model/views/View;->access$100(Lcom/zendesk/api/model/views/View;)Lcom/zendesk/api/model/BaseModel;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/zendesk/api/model/BaseModel;->getTicketFields()Lcom/zendesk/api/model/account/TicketFields;

    move-result-object v22

    const-string v23, "id"

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/zendesk/api/model/views/View$ViewTickets;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/zendesk/api/model/account/TicketFields;->getFieldForId(Ljava/lang/Long;)Lcom/zendesk/api/model/account/TicketField;

    move-result-object v15

    .line 573
    .local v15, tf:Lcom/zendesk/api/model/account/TicketField;
    new-instance v16, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/views/View$ViewTickets;->this$0:Lcom/zendesk/api/model/views/View;

    move-object/from16 v22, v0

    #getter for: Lcom/zendesk/api/model/views/View;->baseModel:Lcom/zendesk/api/model/BaseModel;
    invoke-static/range {v22 .. v22}, Lcom/zendesk/api/model/views/View;->access$100(Lcom/zendesk/api/model/views/View;)Lcom/zendesk/api/model/BaseModel;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v15}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V

    .line 574
    .local v16, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 575
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/zendesk/api/model/ticket/Ticket;->updateCustomTicketFieldEntry(Lcom/zendesk/api/model/ticket/TicketFieldEntry;)V

    .line 569
    .end local v15           #tf:Lcom/zendesk/api/model/account/TicketField;
    .end local v16           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 582
    .end local v2           #customField:Lorg/json/JSONObject;
    .end local v5           #j:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/views/View$ViewTickets;->listItems:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 585
    .end local v3           #customFields:Lorg/json/JSONArray;
    .end local v4           #i:I
    .end local v7           #lastComment:Lorg/json/JSONObject;
    .end local v8           #row:Lorg/json/JSONObject;
    .end local v10           #satRating:Lorg/json/JSONObject;
    .end local v12           #satisfactionScore:Ljava/lang/String;
    .end local v14           #t:Lcom/zendesk/api/model/ticket/Ticket;
    .end local v17           #ticketJSON:Lorg/json/JSONObject;
    .end local v21           #users:Lorg/json/JSONArray;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/views/View$ViewTickets;->this$0:Lcom/zendesk/api/model/views/View;

    move-object/from16 v22, v0

    #getter for: Lcom/zendesk/api/model/views/View;->count:Ljava/lang/Integer;
    invoke-static/range {v22 .. v22}, Lcom/zendesk/api/model/views/View;->access$000(Lcom/zendesk/api/model/views/View;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/views/View$ViewTickets;->listItems:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/views/View$ViewTickets;->this$0:Lcom/zendesk/api/model/views/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/views/View$ViewTickets;->listItems:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    #setter for: Lcom/zendesk/api/model/views/View;->count:Ljava/lang/Integer;
    invoke-static/range {v22 .. v23}, Lcom/zendesk/api/model/views/View;->access$002(Lcom/zendesk/api/model/views/View;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 589
    :cond_b
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/views/View$ViewTickets;->this$0:Lcom/zendesk/api/model/views/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/zendesk/api/model/views/View;->generateSectionHeaders(I)V
    invoke-static {v0, v13}, Lcom/zendesk/api/model/views/View;->access$200(Lcom/zendesk/api/model/views/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    return-void

    .line 590
    :catch_0
    move-exception v14

    .line 591
    .local v14, t:Ljava/lang/Exception;
    new-instance v22, Ljava/lang/RuntimeException;

    move-object/from16 v0, v22

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v22
.end method
