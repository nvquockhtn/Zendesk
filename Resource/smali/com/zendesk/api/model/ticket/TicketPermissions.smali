.class public Lcom/zendesk/api/model/ticket/TicketPermissions;
.super Ljava/lang/Object;
.source "TicketPermissions.java"


# static fields
.field private static final KEY_CAN_CREATE_FOLLOWUP_TICKET:Ljava/lang/String; = "can_create_followup_ticket"

.field private static final KEY_CAN_DELETE_TICKET:Ljava/lang/String; = "can_delete_ticket"

.field private static final KEY_CAN_EDIT_TICKET_PROPERTIES:Ljava/lang/String; = "can_edit_ticket_properties"

.field private static final KEY_CAN_EDIT_TICKET_TAGS:Ljava/lang/String; = "can_edit_ticket_tags"

.field private static final KEY_CAN_MAKE_COMMENTS:Ljava/lang/String; = "can_make_comments"

.field private static final KEY_CAN_MAKE_PUBLIC_COMMENTS:Ljava/lang/String; = "can_make_public_comments"

.field private static final KEY_CAN_MARK_AS_SPAM:Ljava/lang/String; = "can_mark_as_spam"

.field private static final KEY_CAN_MERGE_TICKET:Ljava/lang/String; = "can_merge_ticket"

.field private static final KEY_CAN_UPDATE_TICKET:Ljava/lang/String; = "can_update_ticket"


# instance fields
.field private canCreateFollowUpTicket:Ljava/lang/Boolean;

.field private canDeleteTicket:Ljava/lang/Boolean;

.field private canEditTicketTags:Ljava/lang/Boolean;

.field private canEditTicktProperties:Ljava/lang/Boolean;

.field private canMakeComments:Ljava/lang/Boolean;

.field private canMakePublicComments:Ljava/lang/Boolean;

.field private canMarkAsSpam:Ljava/lang/Boolean;

.field private canMergeTicket:Ljava/lang/Boolean;

.field private canUpdateTicket:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canCreateFollowUpTicket:Ljava/lang/Boolean;

    .line 25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canUpdateTicket:Ljava/lang/Boolean;

    .line 26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canEditTicketTags:Ljava/lang/Boolean;

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMergeTicket:Ljava/lang/Boolean;

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMakePublicComments:Ljava/lang/Boolean;

    .line 29
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMarkAsSpam:Ljava/lang/Boolean;

    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMakeComments:Ljava/lang/Boolean;

    .line 31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canEditTicktProperties:Ljava/lang/Boolean;

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canDeleteTicket:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public canDeleteTicket()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canDeleteTicket:Ljava/lang/Boolean;

    return-object v0
.end method

.method public canEditTicketTags()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canEditTicketTags:Ljava/lang/Boolean;

    return-object v0
.end method

.method public canMakePublicComments()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMakePublicComments:Ljava/lang/Boolean;

    return-object v0
.end method

.method public canMergeTicket()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMergeTicket:Ljava/lang/Boolean;

    return-object v0
.end method

.method public canUpdateTicket()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canUpdateTicket:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanCreateFollowUpTicket()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canCreateFollowUpTicket:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanEditTicktProperties()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canEditTicktProperties:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanMakeComments()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMakeComments:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanMarkAsSpam()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMarkAsSpam:Ljava/lang/Boolean;

    return-object v0
.end method

.method update(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 36
    const-string v0, "can_update_ticket"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "can_update_ticket"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canUpdateTicket:Ljava/lang/Boolean;

    .line 39
    :cond_0
    const-string v0, "can_make_public_comments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    const-string v0, "can_make_public_comments"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMakePublicComments:Ljava/lang/Boolean;

    .line 42
    :cond_1
    const-string v0, "can_delete_ticket"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    const-string v0, "can_delete_ticket"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canDeleteTicket:Ljava/lang/Boolean;

    .line 45
    :cond_2
    const-string v0, "can_merge_ticket"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    const-string v0, "can_merge_ticket"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMergeTicket:Ljava/lang/Boolean;

    .line 48
    :cond_3
    const-string v0, "can_edit_ticket_tags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 49
    const-string v0, "can_edit_ticket_tags"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canEditTicketTags:Ljava/lang/Boolean;

    .line 51
    :cond_4
    const-string v0, "can_mark_as_spam"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    const-string v0, "can_mark_as_spam"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMarkAsSpam:Ljava/lang/Boolean;

    .line 54
    :cond_5
    const-string v0, "can_edit_ticket_properties"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 55
    const-string v0, "can_edit_ticket_properties"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canEditTicktProperties:Ljava/lang/Boolean;

    .line 57
    :cond_6
    const-string v0, "can_create_followup_ticket"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 58
    const-string v0, "can_create_followup_ticket"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canCreateFollowUpTicket:Ljava/lang/Boolean;

    .line 60
    :cond_7
    const-string v0, "can_make_comments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61
    const-string v0, "can_make_comments"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/TicketPermissions;->canMakeComments:Ljava/lang/Boolean;

    .line 63
    :cond_8
    return-void
.end method
