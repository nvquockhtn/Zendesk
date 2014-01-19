.class public Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataCustom;
.super Ljava/lang/Object;
.source "AuditMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/ticket/audits/AuditMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuditMetadataCustom"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/ticket/audits/AuditMetadata;


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/ticket/audits/AuditMetadata;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter "json"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataCustom;->this$0:Lcom/zendesk/api/model/ticket/audits/AuditMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    if-nez p2, :cond_0

    .line 149
    :cond_0
    return-void
.end method
