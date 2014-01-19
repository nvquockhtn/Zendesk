.class public Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent$FacebookPage;
.super Ljava/lang/Object;
.source "FacebookAuditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FacebookPage"
.end annotation


# static fields
.field private static final KEY_GRAPH_ID:Ljava/lang/String; = "graph_id"

.field private static final KEY_NAME:Ljava/lang/String; = "name"


# instance fields
.field private graphId:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "graph_id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "name"
    .end annotation
.end field

.field final synthetic this$0:Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .parameter "json"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent$FacebookPage;->this$0:Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, "graph_id"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent$FacebookPage;->graphId:Ljava/lang/String;

    .line 114
    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent$FacebookPage;->name:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public getGraphId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent$FacebookPage;->graphId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent$FacebookPage;->name:Ljava/lang/String;

    return-object v0
.end method
