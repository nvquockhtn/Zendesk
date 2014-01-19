.class public abstract Lcom/zendesk/api/model/BaseModelImpl;
.super Ljava/lang/Object;
.source "BaseModelImpl.java"

# interfaces
.implements Lcom/zendesk/api/model/BaseModel;


# static fields
.field private static final KEY_URL:Ljava/lang/String; = "url"

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field protected accountConfig:Lcom/zendesk/api/model/account/AccountConfig;

.field protected activeLoginRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private baseCacheDir:Ljava/lang/String;

.field protected bookmarks:Lcom/zendesk/api/model/views/Bookmarks;

.field private currentLocale:Ljava/util/Locale;

.field protected currentUser:Lcom/zendesk/api/model/users/User;

.field private email:Ljava/lang/String;

.field protected forums:Lcom/zendesk/api/model/forums/Categories;

.field private groupCache:Lcom/zendesk/api/model/cache/GroupCache;

.field protected groups:Lcom/zendesk/api/model/users/Groups;

.field protected loginException:Ljava/lang/Throwable;

.field protected loginHandler:Lcom/zendesk/api/model/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field protected macros:Lcom/zendesk/api/model/macros/Macros;

.field protected organisations:Lcom/zendesk/api/model/users/Organizations;

.field private organizationCache:Lcom/zendesk/api/model/cache/OrganizationCache;

.field private password:Ljava/lang/String;

.field protected problemTicketSearch:Lcom/zendesk/api/model/search/ProblemTicketSearch;

.field protected recentTickets:Lcom/zendesk/api/model/views/RecentTickets;

.field protected search:Lcom/zendesk/api/model/search/Search;

.field private subdomain:Ljava/lang/String;

.field private ticketCache:Lcom/zendesk/api/model/cache/TicketCache;

.field protected ticketFields:Lcom/zendesk/api/model/account/TicketFields;

.field protected ticketForms:Lcom/zendesk/api/model/ticket/forms/TicketForms;

.field private userAgent:Ljava/lang/String;

.field private userCache:Lcom/zendesk/api/model/cache/UserCache;

.field protected views:Lcom/zendesk/api/model/views/Views;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/zendesk/api/model/BaseModelImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/model/BaseModelImpl;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->activeLoginRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/api/model/BaseModelImpl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->baseCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/api/model/BaseModelImpl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zendesk/api/model/BaseModelImpl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zendesk/api/model/BaseModelImpl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zendesk/api/model/BaseModelImpl;Lcom/zendesk/api/model/ResponseHandler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/zendesk/api/model/BaseModelImpl;->login(Lcom/zendesk/api/model/ResponseHandler;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/zendesk/api/model/BaseModelImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/zendesk/api/model/BaseModelImpl;->continueLogin()V

    return-void
.end method

.method static synthetic access$600(Lcom/zendesk/api/model/BaseModelImpl;)Lcom/zendesk/api/model/cache/UserCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->userCache:Lcom/zendesk/api/model/cache/UserCache;

    return-object v0
.end method

.method private continueLogin()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->loginHandler:Lcom/zendesk/api/model/ResponseHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->activeLoginRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    const-class v0, Lcom/zendesk/api/model/users/Groups;

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/BaseModelImpl;->listRequest(Ljava/lang/Class;)V

    .line 468
    invoke-virtual {p0}, Lcom/zendesk/api/model/BaseModelImpl;->getGroups()Lcom/zendesk/api/model/users/Groups;

    move-result-object v0

    new-instance v1, Lcom/zendesk/api/model/BaseModelImpl$7;

    invoke-direct {v1, p0}, Lcom/zendesk/api/model/BaseModelImpl$7;-><init>(Lcom/zendesk/api/model/BaseModelImpl;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/users/Groups;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 482
    const-class v0, Lcom/zendesk/api/model/views/Views;

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/BaseModelImpl;->listRequest(Ljava/lang/Class;)V

    .line 483
    invoke-virtual {p0}, Lcom/zendesk/api/model/BaseModelImpl;->getViews()Lcom/zendesk/api/model/views/Views;

    move-result-object v0

    new-instance v1, Lcom/zendesk/api/model/BaseModelImpl$8;

    invoke-direct {v1, p0}, Lcom/zendesk/api/model/BaseModelImpl$8;-><init>(Lcom/zendesk/api/model/BaseModelImpl;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/views/Views;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 497
    const-class v0, Lcom/zendesk/api/model/views/Bookmarks;

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/BaseModelImpl;->listRequest(Ljava/lang/Class;)V

    .line 498
    invoke-virtual {p0}, Lcom/zendesk/api/model/BaseModelImpl;->getBookmarks()Lcom/zendesk/api/model/views/Bookmarks;

    move-result-object v0

    new-instance v1, Lcom/zendesk/api/model/BaseModelImpl$9;

    invoke-direct {v1, p0}, Lcom/zendesk/api/model/BaseModelImpl$9;-><init>(Lcom/zendesk/api/model/BaseModelImpl;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/views/Bookmarks;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 512
    const-class v0, Lcom/zendesk/api/model/macros/Macros;

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/BaseModelImpl;->listRequest(Ljava/lang/Class;)V

    .line 513
    invoke-virtual {p0}, Lcom/zendesk/api/model/BaseModelImpl;->getMacros()Lcom/zendesk/api/model/macros/Macros;

    move-result-object v0

    new-instance v1, Lcom/zendesk/api/model/BaseModelImpl$10;

    invoke-direct {v1, p0}, Lcom/zendesk/api/model/BaseModelImpl$10;-><init>(Lcom/zendesk/api/model/BaseModelImpl;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/macros/Macros;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 526
    const-class v0, Lcom/zendesk/api/model/ticket/forms/TicketForms;

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/BaseModelImpl;->listRequest(Ljava/lang/Class;)V

    .line 527
    invoke-virtual {p0}, Lcom/zendesk/api/model/BaseModelImpl;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v0

    new-instance v1, Lcom/zendesk/api/model/BaseModelImpl$11;

    invoke-direct {v1, p0}, Lcom/zendesk/api/model/BaseModelImpl$11;-><init>(Lcom/zendesk/api/model/BaseModelImpl;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/forms/TicketForms;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 543
    const-class v0, Lcom/zendesk/api/model/users/Organizations;

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/BaseModelImpl;->listRequest(Ljava/lang/Class;)V

    .line 544
    invoke-virtual {p0}, Lcom/zendesk/api/model/BaseModelImpl;->getOrganizations()Lcom/zendesk/api/model/users/Organizations;

    move-result-object v0

    new-instance v1, Lcom/zendesk/api/model/BaseModelImpl$12;

    invoke-direct {v1, p0}, Lcom/zendesk/api/model/BaseModelImpl$12;-><init>(Lcom/zendesk/api/model/BaseModelImpl;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/users/Organizations;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    goto :goto_0
.end method

.method private deleteContents(Ljava/io/File;)V
    .locals 6
    .parameter "f"

    .prologue
    .line 297
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 298
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 299
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 300
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    invoke-direct {p0, v2}, Lcom/zendesk/api/model/BaseModelImpl;->deleteContents(Ljava/io/File;)V

    .line 303
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 299
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method private getSubdomain(Lcom/zendesk/api/model/ResponseHandler;Z)V
    .locals 2
    .parameter
    .parameter "minimal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/BaseModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<Lcom/zendesk/api/model/BaseModel;>;"
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->subdomain:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->subdomain:Ljava/lang/String;

    const-string v1, ".zendesk.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Lcom/zendesk/api/model/BaseModelImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/zendesk/api/model/BaseModelImpl$3;-><init>(Lcom/zendesk/api/model/BaseModelImpl;Lcom/zendesk/api/model/ResponseHandler;Z)V

    invoke-virtual {v0}, Lcom/zendesk/api/model/BaseModelImpl$3;->start()V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zendesk/api/model/BaseModelImpl;->login(Lcom/zendesk/api/model/ResponseHandler;Z)V

    goto :goto_0
.end method

.method private login(Lcom/zendesk/api/model/ResponseHandler;Z)V
    .locals 2
    .parameter
    .parameter "minimal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/BaseModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<Lcom/zendesk/api/model/BaseModel;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->loginException:Ljava/lang/Throwable;

    .line 401
    iput-object p1, p0, Lcom/zendesk/api/model/BaseModelImpl;->loginHandler:Lcom/zendesk/api/model/ResponseHandler;

    .line 403
    const-class v0, Lcom/zendesk/api/model/account/AccountConfig;

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/BaseModelImpl;->listRequest(Ljava/lang/Class;)V

    .line 404
    invoke-virtual {p0}, Lcom/zendesk/api/model/BaseModelImpl;->getAccountConfig()Lcom/zendesk/api/model/account/AccountConfig;

    move-result-object v0

    new-instance v1, Lcom/zendesk/api/model/BaseModelImpl$4;

    invoke-direct {v1, p0, p2}, Lcom/zendesk/api/model/BaseModelImpl$4;-><init>(Lcom/zendesk/api/model/BaseModelImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/account/AccountConfig;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 422
    const-class v0, Lcom/zendesk/api/model/users/User;

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/BaseModelImpl;->listRequest(Ljava/lang/Class;)V

    .line 423
    new-instance v0, Lcom/zendesk/api/model/BaseModelImpl$5;

    invoke-direct {v0, p0, p2}, Lcom/zendesk/api/model/BaseModelImpl$5;-><init>(Lcom/zendesk/api/model/BaseModelImpl;Z)V

    invoke-virtual {v0}, Lcom/zendesk/api/model/BaseModelImpl$5;->start()V

    .line 443
    const-class v0, Lcom/zendesk/api/model/account/TicketFields;

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/BaseModelImpl;->listRequest(Ljava/lang/Class;)V

    .line 444
    invoke-virtual {p0}, Lcom/zendesk/api/model/BaseModelImpl;->getTicketFields()Lcom/zendesk/api/model/account/TicketFields;

    move-result-object v0

    new-instance v1, Lcom/zendesk/api/model/BaseModelImpl$6;

    invoke-direct {v1, p0, p2}, Lcom/zendesk/api/model/BaseModelImpl$6;-><init>(Lcom/zendesk/api/model/BaseModelImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/account/TicketFields;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 461
    return-void
.end method


# virtual methods
.method protected declared-synchronized checkForLoginCompletion()V
    .locals 2

    .prologue
    .line 584
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->loginException:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 586
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/api/model/BaseModelImpl;->loginFailed(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 588
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->activeLoginRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->loginHandler:Lcom/zendesk/api/model/ResponseHandler;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->loginHandler:Lcom/zendesk/api/model/ResponseHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zendesk/api/model/ResponseHandler;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->loginHandler:Lcom/zendesk/api/model/ResponseHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/zendesk/api/model/cache/TicketCacheImpl;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/cache/TicketCacheImpl;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->ticketCache:Lcom/zendesk/api/model/cache/TicketCache;

    .line 150
    new-instance v0, Lcom/zendesk/api/model/cache/UserCacheImpl;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/cache/UserCacheImpl;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->userCache:Lcom/zendesk/api/model/cache/UserCache;

    .line 151
    new-instance v0, Lcom/zendesk/api/model/cache/GroupCacheImpl;

    invoke-direct {v0}, Lcom/zendesk/api/model/cache/GroupCacheImpl;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->groupCache:Lcom/zendesk/api/model/cache/GroupCache;

    .line 152
    new-instance v0, Lcom/zendesk/api/model/cache/OrganizationCacheImpl;

    invoke-direct {v0}, Lcom/zendesk/api/model/cache/OrganizationCacheImpl;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->organizationCache:Lcom/zendesk/api/model/cache/OrganizationCache;

    .line 153
    new-instance v0, Lcom/zendesk/api/model/views/Bookmarks;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/views/Bookmarks;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->bookmarks:Lcom/zendesk/api/model/views/Bookmarks;

    .line 154
    new-instance v0, Lcom/zendesk/api/model/account/AccountConfig;

    invoke-direct {v0}, Lcom/zendesk/api/model/account/AccountConfig;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->accountConfig:Lcom/zendesk/api/model/account/AccountConfig;

    .line 155
    new-instance v0, Lcom/zendesk/api/model/account/TicketFields;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/account/TicketFields;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->ticketFields:Lcom/zendesk/api/model/account/TicketFields;

    .line 156
    new-instance v0, Lcom/zendesk/api/model/users/Organizations;

    invoke-direct {v0}, Lcom/zendesk/api/model/users/Organizations;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->organisations:Lcom/zendesk/api/model/users/Organizations;

    .line 157
    new-instance v0, Lcom/zendesk/api/model/ticket/forms/TicketForms;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/ticket/forms/TicketForms;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->ticketForms:Lcom/zendesk/api/model/ticket/forms/TicketForms;

    .line 158
    new-instance v0, Lcom/zendesk/api/model/users/Groups;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/users/Groups;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->groups:Lcom/zendesk/api/model/users/Groups;

    .line 159
    new-instance v0, Lcom/zendesk/api/model/macros/Macros;

    invoke-direct {v0}, Lcom/zendesk/api/model/macros/Macros;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->macros:Lcom/zendesk/api/model/macros/Macros;

    .line 160
    new-instance v0, Lcom/zendesk/api/model/views/Views;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/views/Views;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->views:Lcom/zendesk/api/model/views/Views;

    .line 161
    new-instance v0, Lcom/zendesk/api/model/search/Search;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/search/Search;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->search:Lcom/zendesk/api/model/search/Search;

    .line 162
    new-instance v0, Lcom/zendesk/api/model/search/ProblemTicketSearch;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/search/ProblemTicketSearch;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->problemTicketSearch:Lcom/zendesk/api/model/search/ProblemTicketSearch;

    .line 163
    new-instance v0, Lcom/zendesk/api/model/forums/Categories;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/forums/Categories;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->forums:Lcom/zendesk/api/model/forums/Categories;

    .line 164
    new-instance v0, Lcom/zendesk/api/model/views/RecentTickets;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/views/RecentTickets;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->recentTickets:Lcom/zendesk/api/model/views/RecentTickets;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->currentUser:Lcom/zendesk/api/model/users/User;

    .line 166
    return-void
.end method

.method public clearFileCache()V
    .locals 5

    .prologue
    .line 287
    iget-object v4, p0, Lcom/zendesk/api/model/BaseModelImpl;->userCache:Lcom/zendesk/api/model/cache/UserCache;

    invoke-interface {v4}, Lcom/zendesk/api/model/cache/UserCache;->getUsers()Ljava/util/Collection;

    move-result-object v3

    .line 288
    .local v3, users:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zendesk/api/model/users/User;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/users/User;

    .line 289
    .local v2, u:Lcom/zendesk/api/model/users/User;
    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User;->clearAvatarState()V

    goto :goto_0

    .line 292
    .end local v2           #u:Lcom/zendesk/api/model/users/User;
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/zendesk/api/model/BaseModelImpl;->baseCacheDir:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, cacheDir:Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/zendesk/api/model/BaseModelImpl;->deleteContents(Ljava/io/File;)V

    .line 294
    return-void
.end method

.method public getAccountConfig()Lcom/zendesk/api/model/account/AccountConfig;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->accountConfig:Lcom/zendesk/api/model/account/AccountConfig;

    return-object v0
.end method

.method public getAccountLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->currentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getBaseCacheDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->baseCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getBookmarks()Lcom/zendesk/api/model/views/Bookmarks;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->bookmarks:Lcom/zendesk/api/model/views/Bookmarks;

    return-object v0
.end method

.method public getCurrentUser()Lcom/zendesk/api/model/users/User;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->currentUser:Lcom/zendesk/api/model/users/User;

    return-object v0
.end method

.method public getForums()Lcom/zendesk/api/model/forums/Categories;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->forums:Lcom/zendesk/api/model/forums/Categories;

    return-object v0
.end method

.method public getGroupCache()Lcom/zendesk/api/model/cache/GroupCache;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->groupCache:Lcom/zendesk/api/model/cache/GroupCache;

    return-object v0
.end method

.method public getGroups()Lcom/zendesk/api/model/users/Groups;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->groups:Lcom/zendesk/api/model/users/Groups;

    return-object v0
.end method

.method public getMacros()Lcom/zendesk/api/model/macros/Macros;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->macros:Lcom/zendesk/api/model/macros/Macros;

    return-object v0
.end method

.method public getOrganizationCache()Lcom/zendesk/api/model/cache/OrganizationCache;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->organizationCache:Lcom/zendesk/api/model/cache/OrganizationCache;

    return-object v0
.end method

.method public getOrganizations()Lcom/zendesk/api/model/users/Organizations;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->organisations:Lcom/zendesk/api/model/users/Organizations;

    return-object v0
.end method

.method public getProblemTicketSearch()Lcom/zendesk/api/model/search/ProblemTicketSearch;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->problemTicketSearch:Lcom/zendesk/api/model/search/ProblemTicketSearch;

    return-object v0
.end method

.method public getRecentTickets()Lcom/zendesk/api/model/views/RecentTickets;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->recentTickets:Lcom/zendesk/api/model/views/RecentTickets;

    return-object v0
.end method

.method public getSearch()Lcom/zendesk/api/model/search/Search;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->search:Lcom/zendesk/api/model/search/Search;

    return-object v0
.end method

.method public getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->ticketCache:Lcom/zendesk/api/model/cache/TicketCache;

    return-object v0
.end method

.method public getTicketFields()Lcom/zendesk/api/model/account/TicketFields;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->ticketFields:Lcom/zendesk/api/model/account/TicketFields;

    return-object v0
.end method

.method public getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->ticketForms:Lcom/zendesk/api/model/ticket/forms/TicketForms;

    return-object v0
.end method

.method public getUserCache()Lcom/zendesk/api/model/cache/UserCache;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->userCache:Lcom/zendesk/api/model/cache/UserCache;

    return-object v0
.end method

.method public getViews()Lcom/zendesk/api/model/views/Views;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->views:Lcom/zendesk/api/model/views/Views;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "baseCacheDir"
    .parameter "subdomain"
    .parameter "email"
    .parameter "password"
    .parameter "userAgent"

    .prologue
    .line 137
    iput-object p3, p0, Lcom/zendesk/api/model/BaseModelImpl;->email:Ljava/lang/String;

    .line 138
    iput-object p4, p0, Lcom/zendesk/api/model/BaseModelImpl;->password:Ljava/lang/String;

    .line 139
    iput-object p5, p0, Lcom/zendesk/api/model/BaseModelImpl;->userAgent:Ljava/lang/String;

    .line 140
    const-string v0, "http://"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->subdomain:Ljava/lang/String;

    .line 141
    invoke-virtual {p0, p1}, Lcom/zendesk/api/model/BaseModelImpl;->setBaseCacheDir(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/zendesk/api/model/BaseModelImpl;->subdomain:Ljava/lang/String;

    invoke-static {v0, v1, p3, p4, p5}, Lcom/zendesk/api/http/Request;->init(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->currentLocale:Ljava/util/Locale;

    .line 144
    invoke-virtual {p0}, Lcom/zendesk/api/model/BaseModelImpl;->clear()V

    .line 145
    return-void
.end method

.method protected declared-synchronized listRequest(Ljava/lang/Class;)V
    .locals 3
    .parameter "clazz"

    .prologue
    .line 563
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->activeLoginRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    monitor-exit p0

    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public login()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 325
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 326
    .local v1, thread:Ljava/lang/Thread;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v0, errors:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Throwable;>;"
    new-instance v2, Lcom/zendesk/api/model/BaseModelImpl$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/zendesk/api/model/BaseModelImpl$1;-><init>(Lcom/zendesk/api/model/BaseModelImpl;Ljava/lang/Thread;Ljava/util/List;)V

    invoke-direct {p0, v2, v5}, Lcom/zendesk/api/model/BaseModelImpl;->getSubdomain(Lcom/zendesk/api/model/ResponseHandler;Z)V

    .line 342
    const-wide/32 v2, 0xea60

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 345
    sget-object v3, Lcom/zendesk/api/model/BaseModelImpl;->logger:Lorg/slf4j/Logger;

    const-string v4, "Error logging in."

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    new-instance v3, Lcom/zendesk/api/http/RequestException;

    const-string v4, "Error logging in."

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v3, v5, v4, v2}, Lcom/zendesk/api/http/RequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 342
    :catch_0
    move-exception v2

    goto :goto_0

    .line 348
    :cond_0
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
    .line 319
    .local p1, handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<Lcom/zendesk/api/model/BaseModel;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zendesk/api/model/BaseModelImpl;->getSubdomain(Lcom/zendesk/api/model/ResponseHandler;Z)V

    .line 320
    return-void
.end method

.method protected declared-synchronized loginFailed(Ljava/lang/Class;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "clazz"
    .parameter "e"

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->loginException:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 572
    iput-object p2, p0, Lcom/zendesk/api/model/BaseModelImpl;->loginException:Ljava/lang/Throwable;

    .line 574
    :cond_0
    if-eqz p1, :cond_1

    .line 575
    invoke-virtual {p0, p1}, Lcom/zendesk/api/model/BaseModelImpl;->unlistRequest(Ljava/lang/Class;)V

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->activeLoginRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->loginHandler:Lcom/zendesk/api/model/ResponseHandler;

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->loginHandler:Lcom/zendesk/api/model/ResponseHandler;

    iget-object v1, p0, Lcom/zendesk/api/model/BaseModelImpl;->loginException:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/zendesk/api/model/ResponseHandler;->responseFailed(Ljava/lang/Throwable;)V

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->loginHandler:Lcom/zendesk/api/model/ResponseHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :cond_2
    monitor-exit p0

    return-void

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public minimalLogin()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 352
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 353
    .local v1, thread:Ljava/lang/Thread;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v0, errors:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Throwable;>;"
    new-instance v2, Lcom/zendesk/api/model/BaseModelImpl$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/zendesk/api/model/BaseModelImpl$2;-><init>(Lcom/zendesk/api/model/BaseModelImpl;Ljava/lang/Thread;Ljava/util/List;)V

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/zendesk/api/model/BaseModelImpl;->getSubdomain(Lcom/zendesk/api/model/ResponseHandler;Z)V

    .line 369
    const-wide/32 v2, 0xea60

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 372
    sget-object v3, Lcom/zendesk/api/model/BaseModelImpl;->logger:Lorg/slf4j/Logger;

    const-string v4, "Error logging in."

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    new-instance v3, Lcom/zendesk/api/http/RequestException;

    const-string v4, "Error logging in."

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v3, v5, v4, v2}, Lcom/zendesk/api/http/RequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 369
    :catch_0
    move-exception v2

    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method

.method public setAccountLocale(Ljava/util/Locale;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 601
    iput-object p1, p0, Lcom/zendesk/api/model/BaseModelImpl;->currentLocale:Ljava/util/Locale;

    .line 602
    return-void
.end method

.method public setBaseCacheDir(Ljava/lang/String;)V
    .locals 0
    .parameter "baseCacheDir"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/zendesk/api/model/BaseModelImpl;->baseCacheDir:Ljava/lang/String;

    .line 276
    invoke-static {p1}, Lcom/zendesk/api/model/shared/Attachment;->setBaseCacheDir(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public setGroupCache(Lcom/zendesk/api/model/cache/GroupCache;)V
    .locals 0
    .parameter "groupCache"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/zendesk/api/model/BaseModelImpl;->groupCache:Lcom/zendesk/api/model/cache/GroupCache;

    .line 196
    return-void
.end method

.method public setOrganizationCache(Lcom/zendesk/api/model/cache/OrganizationCache;)V
    .locals 0
    .parameter "organizationCache"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/zendesk/api/model/BaseModelImpl;->organizationCache:Lcom/zendesk/api/model/cache/OrganizationCache;

    .line 206
    return-void
.end method

.method public setTicketCache(Lcom/zendesk/api/model/cache/TicketCache;)V
    .locals 0
    .parameter "ticketCache"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/zendesk/api/model/BaseModelImpl;->ticketCache:Lcom/zendesk/api/model/cache/TicketCache;

    .line 176
    return-void
.end method

.method public setUserCache(Lcom/zendesk/api/model/cache/UserCache;)V
    .locals 0
    .parameter "userCache"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/zendesk/api/model/BaseModelImpl;->userCache:Lcom/zendesk/api/model/cache/UserCache;

    .line 186
    return-void
.end method

.method protected declared-synchronized unlistRequest(Ljava/lang/Class;)V
    .locals 2
    .parameter "clazz"

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl;->activeLoginRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    monitor-exit p0

    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
