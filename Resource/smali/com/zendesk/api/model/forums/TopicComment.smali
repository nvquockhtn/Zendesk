.class public Lcom/zendesk/api/model/forums/TopicComment;
.super Ljava/lang/Object;
.source "TopicComment.java"


# static fields
.field static final KEY_BODY:Ljava/lang/String; = "body"

.field static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_IS_INFORMATIVE:Ljava/lang/String; = "informative"

.field static final KEY_TOPIC_ID:Ljava/lang/String; = "topic_id"

.field static final KEY_UPDATED_AT:Ljava/lang/String; = "updated_at"

.field static final KEY_USER_ID:Ljava/lang/String; = "user_id"


# instance fields
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

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
    .end annotation
.end field

.field private informative:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "informative"
    .end annotation
.end field

.field private topicId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "topic_id"
    .end annotation
.end field

.field private updatedAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "updated_at"
    .end annotation
.end field

.field private userId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "created_at"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/TopicComment;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 51
    const-string v0, "body"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/TopicComment;->body:Ljava/lang/String;

    .line 52
    const-string v0, "updated_at"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/TopicComment;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 53
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/TopicComment;->id:Ljava/lang/Long;

    .line 54
    const-string v0, "topic_id"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/TopicComment;->topicId:Ljava/lang/Long;

    .line 55
    const-string v0, "user_id"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/TopicComment;->userId:Ljava/lang/Long;

    .line 56
    const-string v0, "informative"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/TopicComment;->informative:Ljava/lang/Boolean;

    .line 57
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zendesk/api/model/forums/TopicComment;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zendesk/api/model/forums/TopicComment;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zendesk/api/model/forums/TopicComment;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getInformative()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zendesk/api/model/forums/TopicComment;->informative:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTopicId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/zendesk/api/model/forums/TopicComment;->topicId:Ljava/lang/Long;

    return-object v0
.end method

.method public getUpdatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zendesk/api/model/forums/TopicComment;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/zendesk/api/model/forums/TopicComment;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/zendesk/api/model/forums/TopicComment;->body:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "createdAt"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/zendesk/api/model/forums/TopicComment;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 76
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/zendesk/api/model/forums/TopicComment;->id:Ljava/lang/Long;

    .line 130
    return-void
.end method

.method public setInformative(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "informative"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/zendesk/api/model/forums/TopicComment;->informative:Ljava/lang/Boolean;

    .line 184
    return-void
.end method

.method public setTopicId(Ljava/lang/Long;)V
    .locals 0
    .parameter "topicId"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/zendesk/api/model/forums/TopicComment;->topicId:Ljava/lang/Long;

    .line 148
    return-void
.end method

.method public setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "updatedAt"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/zendesk/api/model/forums/TopicComment;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 112
    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/zendesk/api/model/forums/TopicComment;->userId:Ljava/lang/Long;

    .line 166
    return-void
.end method
