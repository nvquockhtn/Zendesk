.class public Lcom/zendesk/api/model/ticket/LastComment;
.super Ljava/lang/Object;
.source "LastComment.java"


# static fields
.field static final KEY_AUTHOR:Ljava/lang/String; = "author"

.field static final KEY_BODY:Ljava/lang/String; = "body"

.field static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"


# instance fields
.field private author:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "author"
    .end annotation
.end field

.field private body:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "body"
    .end annotation
.end field

.field private createdAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "created_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "created_at"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/LastComment;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 37
    const-string v0, "author"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/LastComment;->author:Ljava/lang/Long;

    .line 38
    const-string v0, "body"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/LastComment;->body:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/LastComment;->author:Ljava/lang/Long;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/LastComment;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/LastComment;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method
