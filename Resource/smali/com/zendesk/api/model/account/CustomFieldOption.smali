.class public Lcom/zendesk/api/model/account/CustomFieldOption;
.super Ljava/lang/Object;
.source "CustomFieldOption.java"


# static fields
.field static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_NAME:Ljava/lang/String; = "name"

.field static final KEY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field isGroup:Z

.field private name:Ljava/lang/String;

.field private subOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/CustomFieldOption;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->name:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->isGroup:Z

    .line 35
    invoke-direct {p0, p1}, Lcom/zendesk/api/model/account/CustomFieldOption;->trimOptionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->displayName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->id:Ljava/lang/Long;

    .line 45
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->name:Ljava/lang/String;

    .line 46
    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->value:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zendesk/api/model/account/CustomFieldOption;->trimOptionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->displayName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private trimOptionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 144
    const-string v1, "::"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 145
    .local v0, ind:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 146
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 148
    .end local p1
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSubOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/CustomFieldOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->subOptions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->subOptions:Ljava/util/List;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->subOptions:Ljava/util/List;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasSubOptions()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->subOptions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->subOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroup()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->isGroup:Z

    return v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->id:Ljava/lang/Long;

    .line 93
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->name:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/zendesk/api/model/account/CustomFieldOption;->value:Ljava/lang/String;

    .line 111
    return-void
.end method
