.class public Lcom/zendesk/api/model/forums/Category;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "Category.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/forums/Category$CategoryForums;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/forums/Category;",
        ">;"
    }
.end annotation


# static fields
.field static final KEY_CATEGORY:Ljava/lang/String; = "category"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "category"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
        type = Lcom/zendesk/api/model/forums/Category;
    .end annotation
.end field

.field static final KEY_COUNT:Ljava/lang/String; = "count"

.field static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_NAME:Ljava/lang/String; = "name"

.field static final KEY_POSITION:Ljava/lang/String; = "position"

.field static final KEY_UPDATED_AT:Ljava/lang/String; = "updated_at"


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "category.description"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->IF_PARENT:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private forums:Lcom/zendesk/api/model/forums/Category$CategoryForums;

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "category.id"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->IF_PARENT:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "category.name"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->IF_PARENT:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private position:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "category.position"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->IF_PARENT:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private updatedAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "category.updated_at"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->IF_PARENT:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 47
    new-instance v0, Lcom/zendesk/api/model/forums/Category$CategoryForums;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/forums/Category$CategoryForums;-><init>(Lcom/zendesk/api/model/forums/Category;)V

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Category;->forums:Lcom/zendesk/api/model/forums/Category$CategoryForums;

    .line 56
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Category;->id:Ljava/lang/Long;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 47
    new-instance v0, Lcom/zendesk/api/model/forums/Category$CategoryForums;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/forums/Category$CategoryForums;-><init>(Lcom/zendesk/api/model/forums/Category;)V

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Category;->forums:Lcom/zendesk/api/model/forums/Category$CategoryForums;

    .line 65
    const-string v0, "position"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Category;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Category;->position:Ljava/lang/Integer;

    .line 66
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Category;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Category;->name:Ljava/lang/String;

    .line 67
    const-string v0, "updated_at"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Category;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Category;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 68
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Category;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Category;->id:Ljava/lang/Long;

    .line 69
    const-string v0, "description"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Category;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Category;->description:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/zendesk/api/model/forums/Category$CategoryForums;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/forums/Category$CategoryForums;-><init>(Lcom/zendesk/api/model/forums/Category;)V

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Category;->forums:Lcom/zendesk/api/model/forums/Category$CategoryForums;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/api/model/forums/Category;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Category;->id:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/zendesk/api/requester/CategoryRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/forums/Category;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/requester/CategoryRequester;-><init>(J)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Category;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getForums()Lcom/zendesk/api/model/forums/Category$CategoryForums;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Category;->forums:Lcom/zendesk/api/model/forums/Category$CategoryForums;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Category;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Category;->position:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUpdatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Category;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 3
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, json:Lorg/json/JSONObject;
    const-string v2, "category"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    .local v0, category:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 84
    const-string v2, "position"

    invoke-static {v0, v2}, Lcom/zendesk/api/model/forums/Category;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/forums/Category;->position:Ljava/lang/Integer;

    .line 85
    const-string v2, "name"

    invoke-static {v0, v2}, Lcom/zendesk/api/model/forums/Category;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/forums/Category;->name:Ljava/lang/String;

    .line 86
    const-string v2, "updated_at"

    invoke-static {v0, v2}, Lcom/zendesk/api/model/forums/Category;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/forums/Category;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 87
    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/zendesk/api/model/forums/Category;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/forums/Category;->id:Ljava/lang/Long;

    .line 88
    const-string v2, "description"

    invoke-static {v0, v2}, Lcom/zendesk/api/model/forums/Category;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/forums/Category;->description:Ljava/lang/String;

    .line 90
    :cond_0
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Category;->description:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Category;->id:Ljava/lang/Long;

    .line 145
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Category;->name:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setPosition(Ljava/lang/Integer;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Category;->position:Ljava/lang/Integer;

    .line 108
    return-void
.end method

.method public setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "updatedAt"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Category;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 126
    return-void
.end method
