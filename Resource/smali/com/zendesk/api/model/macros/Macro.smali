.class public Lcom/zendesk/api/model/macros/Macro;
.super Ljava/lang/Object;
.source "Macro.java"


# static fields
.field static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
    .end annotation
.end field

.field private final subMacros:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/macros/Macro;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/macros/Macro;->subMacros:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/zendesk/api/model/macros/Macro;->title:Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/zendesk/api/model/macros/Macro;->trimMacroName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/macros/Macro;->displayName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/macros/Macro;->subMacros:Ljava/util/List;

    .line 48
    const-string v0, "title"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/macros/Macro;->title:Ljava/lang/String;

    .line 49
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/macros/Macro;->id:Ljava/lang/Long;

    .line 50
    iget-object v0, p0, Lcom/zendesk/api/model/macros/Macro;->title:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zendesk/api/model/macros/Macro;->trimMacroName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/macros/Macro;->displayName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private trimMacroName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 108
    const-string v1, "::"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, ind:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 110
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 112
    .end local p1
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/zendesk/api/model/macros/Macro;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zendesk/api/model/macros/Macro;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getSubMacros()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/macros/Macro;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zendesk/api/model/macros/Macro;->subMacros:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zendesk/api/model/macros/Macro;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/zendesk/api/model/macros/Macro;->id:Ljava/lang/Long;

    .line 87
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/zendesk/api/model/macros/Macro;->title:Ljava/lang/String;

    .line 69
    return-void
.end method
