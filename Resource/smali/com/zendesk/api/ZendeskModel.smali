.class public Lcom/zendesk/api/ZendeskModel;
.super Lcom/zendesk/api/model/BaseModelImpl;
.source "ZendeskModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZendeskModel"

.field private static final instance:Lcom/zendesk/api/ZendeskModel;


# instance fields
.field private activityStream:Lcom/zendesk/api/model/ActivityStream;

.field private lastRegisteredUserId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/zendesk/api/ZendeskModel;

    invoke-direct {v0}, Lcom/zendesk/api/ZendeskModel;-><init>()V

    sput-object v0, Lcom/zendesk/api/ZendeskModel;->instance:Lcom/zendesk/api/ZendeskModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/zendesk/api/model/BaseModelImpl;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/zendesk/api/ZendeskModel;->clear()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/api/ZendeskModel;Ljava/lang/Class;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/zendesk/api/ZendeskModel;->unlistRequest(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zendesk/api/ZendeskModel;)Lcom/zendesk/api/model/ActivityStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zendesk/api/ZendeskModel;->activityStream:Lcom/zendesk/api/model/ActivityStream;

    return-object v0
.end method

.method public static getInstance()Lcom/zendesk/api/ZendeskModel;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/zendesk/api/ZendeskModel;->instance:Lcom/zendesk/api/ZendeskModel;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/zendesk/api/model/BaseModelImpl;->clear()V

    .line 98
    new-instance v0, Lcom/zendesk/api/model/ActivityStream;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/ActivityStream;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v0, p0, Lcom/zendesk/api/ZendeskModel;->activityStream:Lcom/zendesk/api/model/ActivityStream;

    .line 99
    new-instance v0, Lcom/zendesk/api/model/ViewsWithCounts;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/ViewsWithCounts;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v0, p0, Lcom/zendesk/api/ZendeskModel;->views:Lcom/zendesk/api/model/views/Views;

    .line 100
    return-void
.end method

.method public getActivityStream()Lcom/zendesk/api/model/ActivityStream;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/zendesk/api/ZendeskModel;->activityStream:Lcom/zendesk/api/model/ActivityStream;

    return-object v0
.end method

.method public getViews()Lcom/zendesk/api/model/ViewsWithCounts;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/zendesk/api/ZendeskModel;->views:Lcom/zendesk/api/model/views/Views;

    check-cast v0, Lcom/zendesk/api/model/ViewsWithCounts;

    return-object v0
.end method

.method public bridge synthetic getViews()Lcom/zendesk/api/model/views/Views;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v0

    return-object v0
.end method

.method public login()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-super {p0}, Lcom/zendesk/api/model/BaseModelImpl;->login()V

    .line 138
    iget-object v0, p0, Lcom/zendesk/api/ZendeskModel;->activityStream:Lcom/zendesk/api/model/ActivityStream;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ActivityStream;->refresh()V

    .line 139
    return-void
.end method

.method public login(Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<Lcom/zendesk/api/model/BaseModel;>;"
    new-instance v0, Lcom/zendesk/api/ZendeskModel$1;

    invoke-direct {v0, p0, p1}, Lcom/zendesk/api/ZendeskModel$1;-><init>(Lcom/zendesk/api/ZendeskModel;Lcom/zendesk/api/model/ResponseHandler;)V

    invoke-super {p0, v0}, Lcom/zendesk/api/model/BaseModelImpl;->login(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 133
    return-void
.end method

.method public registerForNotifications(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "token"
    .parameter "gcmRegId"
    .parameter "deviceType"

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/zendesk/api/ZendeskModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v0, "ZendeskModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gcmRegId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastRegisteredUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/api/ZendeskModel;->lastRegisteredUserId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentUser.getUserId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/api/ZendeskModel;->currentUser:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/zendesk/api/ZendeskModel;->lastRegisteredUserId:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zendesk/api/ZendeskModel;->currentUser:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/api/ZendeskModel;->lastRegisteredUserId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/zendesk/api/ZendeskModel;->currentUser:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/ZendeskModel;->lastRegisteredUserId:Ljava/lang/Long;

    .line 168
    new-instance v0, Lcom/zendesk/api/ZendeskModel$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zendesk/api/ZendeskModel$2;-><init>(Lcom/zendesk/api/ZendeskModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel$2;->start()V

    goto :goto_0
.end method

.method public unregisterForNotifications(Ljava/lang/String;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zendesk/api/ZendeskModel;->lastRegisteredUserId:Ljava/lang/Long;

    .line 188
    new-instance v0, Lcom/zendesk/api/ZendeskModel$3;

    invoke-direct {v0, p0, p1}, Lcom/zendesk/api/ZendeskModel$3;-><init>(Lcom/zendesk/api/ZendeskModel;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel$3;->start()V

    .line 197
    return-void
.end method
