.class public Lcom/zendesk/api/model/search/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/search/SearchResult$1;
    }
.end annotation


# static fields
.field private static final KEY_TYPE:Ljava/lang/String; = "result_type"

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field protected result:Ljava/lang/Object;

.field private type:Lcom/zendesk/api/model/search/SearchResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/zendesk/api/model/ticket/Ticket;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/model/search/SearchResult;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v1, "result_type"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, typeString:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 38
    invoke-static {v0}, Lcom/zendesk/api/model/search/SearchResultType;->get(Ljava/lang/String;)Lcom/zendesk/api/model/search/SearchResultType;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/search/SearchResult;->type:Lcom/zendesk/api/model/search/SearchResultType;

    .line 39
    iget-object v1, p0, Lcom/zendesk/api/model/search/SearchResult;->type:Lcom/zendesk/api/model/search/SearchResultType;

    if-eqz v1, :cond_1

    .line 41
    sget-object v1, Lcom/zendesk/api/model/search/SearchResult$1;->$SwitchMap$com$zendesk$api$model$search$SearchResultType:[I

    iget-object v2, p0, Lcom/zendesk/api/model/search/SearchResult;->type:Lcom/zendesk/api/model/search/SearchResultType;

    invoke-virtual {v2}, Lcom/zendesk/api/model/search/SearchResultType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 43
    :pswitch_0
    invoke-static {p1, p2}, Lcom/zendesk/api/model/search/TicketSearchResult;->getTicket(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/search/SearchResult;->result:Ljava/lang/Object;

    goto :goto_0

    .line 47
    :pswitch_1
    invoke-static {p1, p2}, Lcom/zendesk/api/model/search/GroupSearchResult;->getGroup(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/users/Group;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/search/SearchResult;->result:Ljava/lang/Object;

    goto :goto_0

    .line 51
    :pswitch_2
    invoke-static {p1, p2}, Lcom/zendesk/api/model/search/OrganizationSearchResult;->getOrganization(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/users/Organization;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/search/SearchResult;->result:Ljava/lang/Object;

    goto :goto_0

    .line 55
    :pswitch_3
    invoke-static {p1, p2}, Lcom/zendesk/api/model/search/TopicSearchResult;->getTopic(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/forums/Topic;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/search/SearchResult;->result:Ljava/lang/Object;

    goto :goto_0

    .line 59
    :pswitch_4
    invoke-static {p1, p2}, Lcom/zendesk/api/model/search/UserSearchResult;->getUser(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/users/User;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/search/SearchResult;->result:Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_1
    sget-object v1, Lcom/zendesk/api/model/search/SearchResult;->logger:Lorg/slf4j/Logger;

    const-string v2, "Search result type not found."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zendesk/api/model/search/SearchResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Lcom/zendesk/api/model/search/SearchResultType;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zendesk/api/model/search/SearchResult;->type:Lcom/zendesk/api/model/search/SearchResultType;

    return-object v0
.end method
