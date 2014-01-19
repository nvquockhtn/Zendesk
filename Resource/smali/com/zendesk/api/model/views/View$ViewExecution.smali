.class public Lcom/zendesk/api/model/views/View$ViewExecution;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/views/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewExecution"
.end annotation


# static fields
.field static final KEY_CUSTOM_FIELDS:Ljava/lang/String; = "custom_fields"

.field static final KEY_FIELDS:Ljava/lang/String; = "fields"

.field static final KEY_GROUP_BY:Ljava/lang/String; = "group_by"

.field static final KEY_GROUP_ORDER:Ljava/lang/String; = "group_order"

.field static final KEY_SORT_BY:Ljava/lang/String; = "sort_by"

.field static final KEY_SORT_ORDER:Ljava/lang/String; = "sort_order"


# instance fields
.field private customFields:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "custom_fields"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/views/View$ViewExecutionField;",
            ">;"
        }
    .end annotation
.end field

.field private fields:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "fields"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/views/View$ViewExecutionField;",
            ">;"
        }
    .end annotation
.end field

.field private groupBy:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "group_by"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private groupOrder:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "group_order"
    .end annotation
.end field

.field private sortBy:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "sort_by"
    .end annotation
.end field

.field private sortOrder:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "sort_order"
    .end annotation
.end field

.field final synthetic this$0:Lcom/zendesk/api/model/views/View;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/views/View;Lorg/json/JSONObject;)V
    .locals 7
    .parameter
    .parameter "json"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->this$0:Lcom/zendesk/api/model/views/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->fields:Ljava/util/List;

    .line 303
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->customFields:Ljava/util/List;

    .line 313
    const-string v3, "group_by"

    invoke-static {p2, v3}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->groupBy:Ljava/lang/String;

    .line 314
    const-string v3, "group_order"

    invoke-static {p2, v3}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->groupOrder:Ljava/lang/String;

    .line 315
    const-string v3, "sort_by"

    invoke-static {p2, v3}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->sortBy:Ljava/lang/String;

    .line 316
    const-string v3, "sort_order"

    invoke-static {p2, v3}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->sortOrder:Ljava/lang/String;

    .line 318
    const-string v3, "fields"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 319
    .local v0, fieldsArray:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 320
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 321
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 322
    .local v2, vef:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->fields:Ljava/util/List;

    new-instance v4, Lcom/zendesk/api/model/views/View$ViewExecutionField;

    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p1, v5, v6}, Lcom/zendesk/api/model/views/View$ViewExecutionField;-><init>(Lcom/zendesk/api/model/views/View;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v1           #i:I
    .end local v2           #vef:Lorg/json/JSONObject;
    :cond_0
    const-string v3, "custom_fields"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_1

    .line 328
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 329
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 330
    .restart local v2       #vef:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->customFields:Ljava/util/List;

    new-instance v4, Lcom/zendesk/api/model/views/View$ViewExecutionField;

    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p1, v5, v6}, Lcom/zendesk/api/model/views/View$ViewExecutionField;-><init>(Lcom/zendesk/api/model/views/View;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 333
    .end local v1           #i:I
    .end local v2           #vef:Lorg/json/JSONObject;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCustomFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/views/View$ViewExecutionField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->customFields:Ljava/util/List;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/views/View$ViewExecutionField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getGroupBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->groupBy:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->groupOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getSortBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->sortBy:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->sortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public shouldGroup()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/zendesk/api/model/views/View$ViewExecution;->groupBy:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
