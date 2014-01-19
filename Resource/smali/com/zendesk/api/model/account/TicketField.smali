.class public Lcom/zendesk/api/model/account/TicketField;
.super Ljava/lang/Object;
.source "TicketField.java"


# static fields
.field static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field static final KEY_CUSTOM_FIELD_OPTIONS:Ljava/lang/String; = "custom_field_options"

.field static final KEY_DESCRIPTION2:Ljava/lang/String; = "description"

.field static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_IS_ACTIVE:Ljava/lang/String; = "active"

.field static final KEY_IS_COLLAPSED_FOR_AGENTS:Ljava/lang/String; = "collapsed_for_agents"

.field static final KEY_IS_EDITABLE_IN_PORTAL:Ljava/lang/String; = "editable_in_portal"

.field static final KEY_IS_REQUIRED:Ljava/lang/String; = "required"

.field static final KEY_IS_REQUIRED_IN_PORTAL:Ljava/lang/String; = "required_in_portal"

.field static final KEY_IS_VISIBLE_IN_PORTAL:Ljava/lang/String; = "visible_in_portal"

.field static final KEY_POSITION:Ljava/lang/String; = "position"

.field static final KEY_REGEXP_FOR_VALIDATION:Ljava/lang/String; = "regexp_for_validation"

.field static final KEY_SUB_TYPE_ID:Ljava/lang/String; = "sub_type_id"

.field static final KEY_TAG:Ljava/lang/String; = "tag"

.field static final KEY_TITLE:Ljava/lang/String; = "title"

.field static final KEY_TITLE_IN_PORTAL:Ljava/lang/String; = "title_in_portal"

.field static final KEY_TYPE:Ljava/lang/String; = "type"

.field static final KEY_UPDATED_AT:Ljava/lang/String; = "updated_at"


# instance fields
.field private active:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "active"
    .end annotation
.end field

.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field private collapsedForAgents:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "collapsed_for_agents"
    .end annotation
.end field

.field private createdAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "created_at"
    .end annotation
.end field

.field private customFieldOptions:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "custom_field_options"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/CustomFieldOption;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "description"
    .end annotation
.end field

.field private editableInPortal:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "editable_in_portal"
    .end annotation
.end field

.field private final groupsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zendesk/api/model/account/CustomFieldOption;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
    .end annotation
.end field

.field private final optionValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zendesk/api/model/account/CustomFieldOption;",
            ">;"
        }
    .end annotation
.end field

.field private position:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "position"
    .end annotation
.end field

.field private regexpForValidation:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "regexp_for_validation"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private required:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "required"
    .end annotation
.end field

.field private requiredInPortal:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "required_in_portal"
    .end annotation
.end field

.field private subTypeId:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "sub_type_id"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "tag"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "title"
    .end annotation
.end field

.field private titleInPortal:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "title_in_portal"
    .end annotation
.end field

.field private type:Lcom/zendesk/api/model/account/TicketFieldType;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "type"
        type = Ljava/lang/String;
    .end annotation
.end field

.field private updatedAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "updated_at"
    .end annotation
.end field

.field private visibleInPortal:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "visible_in_portal"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 1
    .parameter "baseModel"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->customFieldOptions:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->optionValues:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->groupsByName:Ljava/util/Map;

    .line 96
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "json"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/zendesk/api/model/account/TicketField;->customFieldOptions:Ljava/util/List;

    .line 85
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/zendesk/api/model/account/TicketField;->optionValues:Ljava/util/Map;

    .line 86
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/zendesk/api/model/account/TicketField;->groupsByName:Ljava/util/Map;

    .line 106
    const-string v6, "title_in_portal"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setTitleInPortal(Ljava/lang/String;)V

    .line 107
    const-string v6, "tag"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setTag(Ljava/lang/String;)V

    .line 108
    const-string v6, "title"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setTitle(Ljava/lang/String;)V

    .line 109
    const-string v6, "description"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setDescription(Ljava/lang/String;)V

    .line 110
    const-string v6, "regexp_for_validation"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setRegexpForValidation(Ljava/lang/String;)V

    .line 112
    const-string v6, "position"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setPosition(Ljava/lang/Integer;)V

    .line 113
    const-string v6, "id"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setId(Ljava/lang/Long;)V

    .line 115
    const-string v6, "required"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setRequired(Ljava/lang/Boolean;)V

    .line 116
    const-string v6, "visible_in_portal"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setVisibleInPortal(Z)V

    .line 117
    const-string v6, "editable_in_portal"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setEditableInPortal(Ljava/lang/Boolean;)V

    .line 118
    const-string v6, "required_in_portal"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setRequiredInPortal(Ljava/lang/Boolean;)V

    .line 119
    const-string v6, "collapsed_for_agents"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setCollapsedForAgents(Ljava/lang/Boolean;)V

    .line 120
    const-string v6, "active"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setActive(Ljava/lang/Boolean;)V

    .line 122
    const-string v6, "created_at"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 123
    const-string v6, "updated_at"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 125
    const-string v6, "type"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, t:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v6, "basic_priority"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    const-string v6, "priority"

    invoke-static {v6}, Lcom/zendesk/api/model/account/TicketFieldType;->get(Ljava/lang/String;)Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setType(Lcom/zendesk/api/model/account/TicketFieldType;)V

    .line 129
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/zendesk/api/model/account/TicketField;->subTypeId:Ljava/lang/Integer;

    .line 134
    :goto_0
    const-string v6, "custom_field_options"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 136
    .local v1, fieldOptions:Lorg/json/JSONArray;
    if-eqz v1, :cond_4

    .line 138
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 139
    new-instance v0, Lcom/zendesk/api/model/account/CustomFieldOption;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/zendesk/api/model/account/CustomFieldOption;-><init>(Lorg/json/JSONObject;)V

    .line 140
    .local v0, cfo:Lcom/zendesk/api/model/account/CustomFieldOption;
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketField;->optionValues:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/CustomFieldOption;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketField;->customFieldOptions:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/account/TicketField;->createOrFindParent(Lcom/zendesk/api/model/account/CustomFieldOption;)Lcom/zendesk/api/model/account/CustomFieldOption;

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 131
    .end local v0           #cfo:Lcom/zendesk/api/model/account/CustomFieldOption;
    .end local v1           #fieldOptions:Lorg/json/JSONArray;
    .end local v2           #i:I
    :cond_0
    invoke-static {v4}, Lcom/zendesk/api/model/account/TicketFieldType;->get(Ljava/lang/String;)Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/account/TicketField;->setType(Lcom/zendesk/api/model/account/TicketFieldType;)V

    goto :goto_0

    .line 145
    .restart local v1       #fieldOptions:Lorg/json/JSONArray;
    .restart local v2       #i:I
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v5, temp:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/account/CustomFieldOption;>;"
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketField;->customFieldOptions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/CustomFieldOption;

    .line 148
    .restart local v0       #cfo:Lcom/zendesk/api/model/account/CustomFieldOption;
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/CustomFieldOption;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "::"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 149
    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/account/TicketField;->createOrFindParent(Lcom/zendesk/api/model/account/CustomFieldOption;)Lcom/zendesk/api/model/account/CustomFieldOption;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/model/account/CustomFieldOption;->getSubOptions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 153
    .end local v0           #cfo:Lcom/zendesk/api/model/account/CustomFieldOption;
    :cond_3
    iget-object v6, p0, Lcom/zendesk/api/model/account/TicketField;->customFieldOptions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 155
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #temp:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/account/CustomFieldOption;>;"
    :cond_4
    return-void
.end method


# virtual methods
.method public addCustomFieldOption(Lcom/zendesk/api/model/account/CustomFieldOption;)V
    .locals 1
    .parameter "option"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->customFieldOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->customFieldOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_0
    return-void
.end method

.method createOrFindParent(Lcom/zendesk/api/model/account/CustomFieldOption;)Lcom/zendesk/api/model/account/CustomFieldOption;
    .locals 6
    .parameter "_cfo"

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/zendesk/api/model/account/CustomFieldOption;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 176
    :cond_0
    :goto_0
    return-object v0

    .line 165
    :cond_1
    invoke-virtual {p1}, Lcom/zendesk/api/model/account/CustomFieldOption;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/zendesk/api/model/account/CustomFieldOption;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, parentName:Ljava/lang/String;
    iget-object v2, p0, Lcom/zendesk/api/model/account/TicketField;->groupsByName:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/CustomFieldOption;

    .line 168
    .local v0, cfo:Lcom/zendesk/api/model/account/CustomFieldOption;
    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/zendesk/api/model/account/CustomFieldOption;

    .end local v0           #cfo:Lcom/zendesk/api/model/account/CustomFieldOption;
    invoke-direct {v0, v1}, Lcom/zendesk/api/model/account/CustomFieldOption;-><init>(Ljava/lang/String;)V

    .line 171
    .restart local v0       #cfo:Lcom/zendesk/api/model/account/CustomFieldOption;
    iget-object v2, p0, Lcom/zendesk/api/model/account/TicketField;->customFieldOptions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v2, p0, Lcom/zendesk/api/model/account/TicketField;->groupsByName:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/account/TicketField;->createOrFindParent(Lcom/zendesk/api/model/account/CustomFieldOption;)Lcom/zendesk/api/model/account/CustomFieldOption;

    goto :goto_0
.end method

.method public getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getCustomFieldOptions()Ljava/util/List;
    .locals 2
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
    .line 490
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zendesk/api/model/account/TicketField;->customFieldOptions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldOptionForGroup(Ljava/lang/String;)Lcom/zendesk/api/model/account/CustomFieldOption;
    .locals 1
    .parameter "groupName"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->groupsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/CustomFieldOption;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getOptionDisplayValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "optionValue"

    .prologue
    const/4 v1, 0x0

    .line 509
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-object v1

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/zendesk/api/model/account/TicketField;->optionValues:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/CustomFieldOption;

    .line 511
    .local v0, option:Lcom/zendesk/api/model/account/CustomFieldOption;
    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/CustomFieldOption;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPosition()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->position:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRegexpForValidation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->regexpForValidation:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTypeId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->subTypeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleInPortal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->titleInPortal:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/zendesk/api/model/account/TicketFieldType;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->type:Lcom/zendesk/api/model/account/TicketFieldType;

    return-object v0
.end method

.method public getUpdatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public isActive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->active:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isCollapsedForAgents()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->collapsedForAgents:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEditableInPortal()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->editableInPortal:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->required:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isRequiredInPortal()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->requiredInPortal:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isVisibleInPortal()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->visibleInPortal:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setActive(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isActive"

    .prologue
    .line 445
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->active:Ljava/lang/Boolean;

    .line 446
    return-void
.end method

.method public setCollapsedForAgents(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isCollapsedForAgents"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->collapsedForAgents:Ljava/lang/Boolean;

    .line 392
    return-void
.end method

.method public setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "createdAt"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 249
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->description:Ljava/lang/String;

    .line 464
    return-void
.end method

.method public setEditableInPortal(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isEditableInPortal"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->editableInPortal:Ljava/lang/Boolean;

    .line 356
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->id:Ljava/lang/Long;

    .line 410
    return-void
.end method

.method public setPosition(Ljava/lang/Integer;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->position:Ljava/lang/Integer;

    .line 213
    return-void
.end method

.method public setRegexpForValidation(Ljava/lang/String;)V
    .locals 0
    .parameter "regexpForValidation"

    .prologue
    .line 481
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->regexpForValidation:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public setRequired(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isRequired"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->required:Ljava/lang/Boolean;

    .line 231
    return-void
.end method

.method public setRequiredInPortal(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isRequiredInPortal"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->requiredInPortal:Ljava/lang/Boolean;

    .line 374
    return-void
.end method

.method public setSubTypeId(Ljava/lang/Integer;)V
    .locals 0
    .parameter "subTypeId"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->subTypeId:Ljava/lang/Integer;

    .line 302
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->tag:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->title:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setTitleInPortal(Ljava/lang/String;)V
    .locals 0
    .parameter "titleInPortal"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->titleInPortal:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setType(Lcom/zendesk/api/model/account/TicketFieldType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 427
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->type:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 428
    return-void
.end method

.method public setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "updatedAt"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketField;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 284
    return-void
.end method

.method public setVisibleInPortal(Z)V
    .locals 1
    .parameter "isVisibleInPortal"

    .prologue
    .line 337
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/account/TicketField;->visibleInPortal:Ljava/lang/Boolean;

    .line 338
    return-void
.end method
