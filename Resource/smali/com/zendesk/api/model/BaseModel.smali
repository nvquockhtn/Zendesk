.class public interface abstract Lcom/zendesk/api/model/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract clearFileCache()V
.end method

.method public abstract getAccountConfig()Lcom/zendesk/api/model/account/AccountConfig;
.end method

.method public abstract getAccountLocale()Ljava/util/Locale;
.end method

.method public abstract getBaseCacheDir()Ljava/lang/String;
.end method

.method public abstract getBookmarks()Lcom/zendesk/api/model/views/Bookmarks;
.end method

.method public abstract getCurrentUser()Lcom/zendesk/api/model/users/User;
.end method

.method public abstract getForums()Lcom/zendesk/api/model/forums/Categories;
.end method

.method public abstract getGroupCache()Lcom/zendesk/api/model/cache/GroupCache;
.end method

.method public abstract getGroups()Lcom/zendesk/api/model/users/Groups;
.end method

.method public abstract getMacros()Lcom/zendesk/api/model/macros/Macros;
.end method

.method public abstract getOrganizationCache()Lcom/zendesk/api/model/cache/OrganizationCache;
.end method

.method public abstract getOrganizations()Lcom/zendesk/api/model/users/Organizations;
.end method

.method public abstract getProblemTicketSearch()Lcom/zendesk/api/model/search/ProblemTicketSearch;
.end method

.method public abstract getRecentTickets()Lcom/zendesk/api/model/views/RecentTickets;
.end method

.method public abstract getSearch()Lcom/zendesk/api/model/search/Search;
.end method

.method public abstract getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;
.end method

.method public abstract getTicketFields()Lcom/zendesk/api/model/account/TicketFields;
.end method

.method public abstract getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;
.end method

.method public abstract getUserCache()Lcom/zendesk/api/model/cache/UserCache;
.end method

.method public abstract getViews()Lcom/zendesk/api/model/views/Views;
.end method

.method public abstract init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract login()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation
.end method

.method public abstract login(Lcom/zendesk/api/model/ResponseHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/BaseModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract minimalLogin()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation
.end method

.method public abstract setAccountLocale(Ljava/util/Locale;)V
.end method

.method public abstract setBaseCacheDir(Ljava/lang/String;)V
.end method

.method public abstract setGroupCache(Lcom/zendesk/api/model/cache/GroupCache;)V
.end method

.method public abstract setOrganizationCache(Lcom/zendesk/api/model/cache/OrganizationCache;)V
.end method

.method public abstract setTicketCache(Lcom/zendesk/api/model/cache/TicketCache;)V
.end method

.method public abstract setUserCache(Lcom/zendesk/api/model/cache/UserCache;)V
.end method
