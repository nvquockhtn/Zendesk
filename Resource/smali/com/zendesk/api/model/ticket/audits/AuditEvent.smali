.class public Lcom/zendesk/api/model/ticket/audits/AuditEvent;
.super Ljava/lang/Object;
.source "AuditEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/ticket/audits/AuditEvent$1;
    }
.end annotation


# instance fields
.field protected baseModel:Lcom/zendesk/api/model/BaseModel;

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
    .end annotation
.end field

.field protected type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V
    .locals 0
    .parameter "baseModel"
    .parameter "id"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/audits/AuditEvent;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 46
    iput-object p2, p0, Lcom/zendesk/api/model/ticket/audits/AuditEvent;->id:Ljava/lang/Long;

    .line 47
    return-void
.end method

.method public static getAuditEvent(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)Lcom/zendesk/api/model/ticket/audits/AuditEvent;
    .locals 6
    .parameter "baseModel"
    .parameter "json"
    .parameter "audit"

    .prologue
    const/4 v5, 0x0

    .line 60
    if-nez p1, :cond_0

    new-instance v3, Lcom/zendesk/api/model/ticket/audits/AuditEvent;

    invoke-direct {v3, p0, v5}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 128
    :goto_0
    return-object v3

    .line 62
    :cond_0
    const-string v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, t:Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 65
    .local v0, aeId:Ljava/lang/Long;
    if-eqz v1, :cond_1

    .line 67
    invoke-static {v1}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->get(Ljava/lang/String;)Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    move-result-object v2

    .line 69
    .local v2, type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;
    if-eqz v2, :cond_1

    .line 70
    sget-object v3, Lcom/zendesk/api/model/ticket/audits/AuditEvent$1;->$SwitchMap$com$zendesk$api$model$ticket$audits$AuditEventType:[I

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 128
    .end local v2           #type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;
    :cond_1
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/AuditEvent;

    invoke-direct {v3, p0, v5}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    goto :goto_0

    .line 72
    .restart local v2       #type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;
    :pswitch_0
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V

    goto :goto_0

    .line 75
    :pswitch_1
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V

    goto :goto_0

    .line 78
    :pswitch_2
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/CommentPrivacyChangeAuditEvent;

    invoke-direct {v3, p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/types/CommentPrivacyChangeAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V

    goto :goto_0

    .line 81
    :pswitch_3
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/TicketCreationAuditEvent;

    invoke-direct {v3, p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/types/TicketCreationAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V

    goto :goto_0

    .line 84
    :pswitch_4
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/TicketChangeAuditEvent;

    invoke-direct {v3, p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/types/TicketChangeAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V

    goto :goto_0

    .line 87
    :pswitch_5
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;

    invoke-direct {v3, p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V

    goto :goto_0

    .line 90
    :pswitch_6
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/CCAuditEvent;

    invoke-direct {v3, p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/types/CCAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V

    goto :goto_0

    .line 93
    :pswitch_7
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/TicketErrorAuditEvent;

    invoke-direct {v3, p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/types/TicketErrorAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V

    goto :goto_0

    .line 96
    :pswitch_8
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/ExternalAuditEvent;

    invoke-direct {v3, p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/types/ExternalAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V

    goto :goto_0

    .line 99
    :pswitch_9
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;

    invoke-direct {v3, p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V

    goto :goto_0

    .line 102
    :pswitch_a
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V

    goto :goto_0

    .line 105
    :pswitch_b
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/LogMeInTranscriptionAuditEvent;

    invoke-direct {v3, p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/types/LogMeInTranscriptionAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V

    goto :goto_0

    .line 108
    :pswitch_c
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/PushAuditEvent;

    invoke-direct {v3, p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/types/PushAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V

    goto :goto_0

    .line 111
    :pswitch_d
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/SatisfactionRatingAuditEvent;

    invoke-direct {v3, p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/types/SatisfactionRatingAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V

    goto :goto_0

    .line 114
    :pswitch_e
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/TweetAuditEvent;

    invoke-direct {v3, p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/types/TweetAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 117
    :pswitch_f
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/SMSAuditEvent;

    invoke-direct {v3, p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/types/SMSAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 120
    :pswitch_10
    new-instance v3, Lcom/zendesk/api/model/ticket/audits/types/TicketSharingAuditEvent;

    invoke-direct {v3, p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/types/TicketSharingAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditEvent;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getType()Lcom/zendesk/api/model/ticket/audits/AuditEventType;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    return-object v0
.end method
