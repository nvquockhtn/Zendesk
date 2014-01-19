.class public Lcom/zendesk/api/model/ticket/audits/AuditMetadata;
.super Ljava/lang/Object;
.source "AuditMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataCustom;,
        Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;
    }
.end annotation


# static fields
.field private static final KEY_CUSTOM:Ljava/lang/String; = "custom"

.field private static final KEY_SYSTEM:Ljava/lang/String; = "system"


# instance fields
.field private custom:Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataCustom;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "custom"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private system:Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "system"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "json"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    const-string v2, "system"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 35
    .local v1, s:Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 36
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;

    invoke-direct {v2, p0, v1}, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;-><init>(Lcom/zendesk/api/model/ticket/audits/AuditMetadata;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata;->system:Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;

    .line 39
    :cond_2
    const-string v2, "custom"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40
    .local v0, c:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 41
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataCustom;

    invoke-direct {v2, p0, v0}, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataCustom;-><init>(Lcom/zendesk/api/model/ticket/audits/AuditMetadata;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata;->custom:Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataCustom;

    goto :goto_0
.end method


# virtual methods
.method public getCustom()Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataCustom;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata;->custom:Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataCustom;

    return-object v0
.end method

.method public getSystem()Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata;->system:Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;

    return-object v0
.end method
