.class public Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;
.super Ljava/lang/Object;
.source "AuditMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/ticket/audits/AuditMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuditMetadataSystem"
.end annotation


# static fields
.field private static final KEY_CLIENT:Ljava/lang/String; = "client"

.field private static final KEY_IP_ADDRESS:Ljava/lang/String; = "ip_address"

.field private static final KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final KEY_LOCATION:Ljava/lang/String; = "location"

.field private static final KEY_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final KEY_MESSAGE_ID:Ljava/lang/String; = "message_id"


# instance fields
.field private client:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "client"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private ipAddress:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "ip_address"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private latitude:Ljava/lang/Double;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "latitude"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "location"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private longitude:Ljava/lang/Double;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "longitude"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private messageId:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "message_id"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field final synthetic this$0:Lcom/zendesk/api/model/ticket/audits/AuditMetadata;


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/ticket/audits/AuditMetadata;Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .parameter "json"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->this$0:Lcom/zendesk/api/model/ticket/audits/AuditMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-nez p2, :cond_0

    .line 97
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "client"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->client:Ljava/lang/String;

    .line 92
    const-string v0, "ip_address"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->ipAddress:Ljava/lang/String;

    .line 93
    const-string v0, "latitude"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonDoubleVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->latitude:Ljava/lang/Double;

    .line 94
    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->location:Ljava/lang/String;

    .line 95
    const-string v0, "longitude"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonDoubleVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->longitude:Ljava/lang/Double;

    .line 96
    const-string v0, "message_id"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->messageId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getClient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->client:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->messageId:Ljava/lang/String;

    return-object v0
.end method
