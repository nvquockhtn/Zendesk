.class public Lcom/zendesk/api/model/account/AccountConfig;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "AccountConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/account/AccountConfig;",
        ">;"
    }
.end annotation


# static fields
.field static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "name"

.field static final KEY_ACCOUNT_OWNER_ID:Ljava/lang/String; = "owner_id"

.field static final KEY_ACCOUNT_SANDBOX:Ljava/lang/String; = "sandbox"

.field static final KEY_ACCOUNT_SUBDOMAIN:Ljava/lang/String; = "subdomain"

.field static final KEY_ACCOUNT_TIMEFORMAT:Ljava/lang/String; = "time_format"

.field static final KEY_ACCOUNT_URL:Ljava/lang/String; = "url"

.field static final KEY_SETTINGS:Ljava/lang/String; = "settings"

.field static final KEY_SETTINGS_APPS:Ljava/lang/String; = "apps"

.field static final KEY_SETTINGS_APPS_CREATE_PRIVATE:Ljava/lang/String; = "create_private"

.field static final KEY_SETTINGS_APPS_CREATE_PUBLIC:Ljava/lang/String; = "create_public"

.field static final KEY_SETTINGS_APPS_USE:Ljava/lang/String; = "use"

.field static final KEY_SETTINGS_CHAT:Ljava/lang/String; = "chat"

.field static final KEY_SETTINGS_CHAT_ENABLED:Ljava/lang/String; = "enabled"

.field static final KEY_SETTINGS_CHAT_MAX_REQUEST_COUNT:Ljava/lang/String; = "maximum_request_count"

.field static final KEY_SETTINGS_CHAT_WELCOME_MSG:Ljava/lang/String; = "welcome_message"

.field static final KEY_SETTINGS_TICKETS:Ljava/lang/String; = "tickets"

.field static final KEY_SETTINGS_TICKETS_AGENT_COLLISION:Ljava/lang/String; = "agent_collision"

.field static final KEY_SETTINGS_TICKETS_COLLABORATION:Ljava/lang/String; = "collaboration"

.field static final KEY_SETTINGS_TICKETS_COMMENTS_PUBLIC_BY_DEFAULT:Ljava/lang/String; = "comments_public_by_default"

.field static final KEY_SETTINGS_TICKETS_LIST_EMPTY_VIEWS:Ljava/lang/String; = "list_empty_views"

.field static final KEY_SETTINGS_TICKETS_LIST_NEWEST_COMMENTS_FIRST:Ljava/lang/String; = "list_newest_comments_first"

.field static final KEY_SETTINGS_TICKETS_MAX_PERSONAL_VIEWS_TO_LIST:Ljava/lang/String; = "maximum_personal_views_to_list"

.field static final KEY_SETTINGS_TICKETS_PRIVATE_ATTACHMENTS:Ljava/lang/String; = "private_attachments"

.field static final KEY_SETTINGS_TICKETS_STATUS_HOLD:Ljava/lang/String; = "status_hold"

.field static final KEY_SETTINGS_TICKETS_TAGGING:Ljava/lang/String; = "tagging"

.field static final KEY_SETTINGS_TWITTER:Ljava/lang/String; = "twitter"

.field static final KEY_SETTINGS_TWITTER_SHORTEN_URL:Ljava/lang/String; = "shorten_url"

.field static final KEY_SETTINGS_USER:Ljava/lang/String; = "user"

.field static final KEY_SETTINGS_USER_TAGGING:Ljava/lang/String; = "tagging"

.field static final KEY_SETTINGS_VOICE:Ljava/lang/String; = "voice"

.field static final KEY_SETTINGS_VOICE_ENABLED:Ljava/lang/String; = "enabled"

.field static final KEY_SETTINGS_VOICE_LOGGING:Ljava/lang/String; = "logging"

.field static final KEY_SETTINGS_VOICE_MAINTENANCE:Ljava/lang/String; = "maintenance"

.field static final KEY_SUBSCRIPTION:Ljava/lang/String; = "subscription"

.field static final KEY_SUBSCRIPTION_ACTIVE:Ljava/lang/String; = "active"

.field static final KEY_SUBSCRIPTION_CREATED_AT:Ljava/lang/String; = "created_at"

.field static final KEY_SUBSCRIPTION_DAYS_LEFT_IN_TRIAL:Ljava/lang/String; = "days_left_in_trial"

.field static final KEY_SUBSCRIPTION_DUNNING:Ljava/lang/String; = "dunning"

.field static final KEY_SUBSCRIPTION_HELP_DESK_SIZE:Ljava/lang/String; = "help_desk_size"

.field static final KEY_SUBSCRIPTION_MAX_AGENTS:Ljava/lang/String; = "max_agents"

.field static final KEY_SUBSCRIPTION_PLAN_NAME:Ljava/lang/String; = "plan_name"

.field static final KEY_SUBSCRIPTION_PLAN_TYPE:Ljava/lang/String; = "plan_type"

.field static final KEY_SUBSCRIPTION_SOURCE:Ljava/lang/String; = "source"

.field static final KEY_SUBSCRIPTION_SUSPENDED:Ljava/lang/String; = "suspended"

.field static final KEY_SUBSCRIPTION_TRIAL:Ljava/lang/String; = "trial"

.field static final KEY_SUBSCRIPTION_UPDATED_AT:Ljava/lang/String; = "updated_at"

.field static final KEY_SUBSCRIPTION_VOICE_CUSTOMER:Ljava/lang/String; = "voice_customer"


# instance fields
.field private account24HourTimeFormat:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "account.time_format"
    .end annotation
.end field

.field private accountName:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "account.name"
    .end annotation
.end field

.field private accountOwnerId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "account.owner_id"
    .end annotation
.end field

.field private accountSandbox:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "account.sandbox"
    .end annotation
.end field

.field private accountSubdomain:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "account.subdomain"
    .end annotation
.end field

.field private accountUrl:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "account.url"
    .end annotation
.end field

.field private appsCreatePrivate:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.apps.create_private"
    .end annotation
.end field

.field private appsCreatePublic:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.apps.create_public"
    .end annotation
.end field

.field private appsUse:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.apps.use"
    .end annotation
.end field

.field private chatEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.chat.enabled"
    .end annotation
.end field

.field private chatMaxRequestCount:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.chat.maximum_request_count"
    .end annotation
.end field

.field private chatWelcomeMessage:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.chat.welcome_message"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private subscriptionActive:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subscription.active"
    .end annotation
.end field

.field private subscriptionCreatedAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subscription.created_at"
    .end annotation
.end field

.field private subscriptionDaysLeftInTrial:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subscription.days_left_in_trial"
    .end annotation
.end field

.field private subscriptionDunning:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subscription.dunning"
    .end annotation
.end field

.field private subscriptionHelpDeskSize:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subscription.help_desk_size"
    .end annotation
.end field

.field private subscriptionMaxAgents:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subscription.max_agents"
    .end annotation
.end field

.field private subscriptionPlanName:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subscription.plan_name"
    .end annotation
.end field

.field private subscriptionPlanType:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subscription.plan_type"
    .end annotation
.end field

.field private subscriptionSource:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subscription.source"
    .end annotation
.end field

.field private subscriptionSuspended:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subscription.suspended"
    .end annotation
.end field

.field private subscriptionTrial:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subscription.trial"
    .end annotation
.end field

.field private subscriptionUpdatedAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subscription.updated_at"
    .end annotation
.end field

.field private subscriptionVoiceCustomer:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subscription.voice_customer"
    .end annotation
.end field

.field private ticketsAgentCollision:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.tickets.agent_collision"
    .end annotation
.end field

.field private ticketsCollaboration:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.tickets.collaboration"
    .end annotation
.end field

.field private ticketsCommentsPublicByDefault:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.tickets.comments_public_by_default"
    .end annotation
.end field

.field private ticketsListEmptyViews:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.tickets.list_empty_views"
    .end annotation
.end field

.field private ticketsListNewestCommentsFirst:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.tickets.list_newest_comments_first"
    .end annotation
.end field

.field private ticketsMaxPersonalViewsToList:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.tickets.maximum_personal_views_to_list"
    .end annotation
.end field

.field private ticketsPrivateAttachments:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.tickets.private_attachments"
    .end annotation
.end field

.field private ticketsTagging:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.tickets.tagging"
    .end annotation
.end field

.field private ticketsUseStatusHold:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.tickets.status_hold"
    .end annotation
.end field

.field private twitterShortenUrl:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.twitter.shorten_url"
    .end annotation
.end field

.field private userTagging:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.user.tagging"
    .end annotation
.end field

.field private voiceEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.voice.enabled"
    .end annotation
.end field

.field private voiceLogging:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.voice.logging"
    .end annotation
.end field

.field private voiceMaintenance:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "settings.voice.maintenance"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/zendesk/api/requester/AccountConfigRequester;

    invoke-direct {v0}, Lcom/zendesk/api/requester/AccountConfigRequester;-><init>()V

    return-object v0
.end method

.method public getAccount24HourTimeFormat()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->account24HourTimeFormat:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->account24HourTimeFormat:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 295
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 297
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountOwnerId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->accountOwnerId:Ljava/lang/Long;

    return-object v0
.end method

.method public getAccountSandbox()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->accountSandbox:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAccountSubdomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->accountSubdomain:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->accountUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppsCreatePrivate()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->appsCreatePrivate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAppsCreatePublic()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->appsCreatePublic:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAppsUse()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->appsUse:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getChatEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->chatEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getChatMaxRequestCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->chatMaxRequestCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getChatWelcomeMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->chatWelcomeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionActive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSubscriptionCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionCreatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getSubscriptionDaysLeftInTrial()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionDaysLeftInTrial:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSubscriptionDunning()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionDunning:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionHelpDeskSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionHelpDeskSize:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionMaxAgents()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionMaxAgents:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSubscriptionPlanName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionPlanName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionPlanType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionPlanType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionSource:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionSuspended()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionSuspended:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSubscriptionTrial()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionTrial:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSubscriptionUpdatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionUpdatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getSubscriptionVoiceCustomer()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionVoiceCustomer:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTicketsAgentCollision()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsAgentCollision:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTicketsCollaboration()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsCollaboration:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTicketsCommentsPublicByDefault()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsCommentsPublicByDefault:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTicketsListEmptyViews()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsListEmptyViews:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTicketsListNewestCommentsFirst()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsListNewestCommentsFirst:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsListNewestCommentsFirst:Ljava/lang/Boolean;

    .line 397
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public getTicketsMaxPersonalViewsToList()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsMaxPersonalViewsToList:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTicketsPrivateAttachments()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsPrivateAttachments:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTicketsTagging()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsTagging:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTicketsUseStatusHold()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsUseStatusHold:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTwitterShortenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->twitterShortenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserTagging()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->userTagging:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVoiceEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->voiceEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVoiceLogging()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->voiceLogging:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVoiceMaintenance()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/zendesk/api/model/account/AccountConfig;->voiceMaintenance:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 14
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x8

    .line 171
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, json:Lorg/json/JSONObject;
    const-string v10, "account"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 174
    .local v0, account:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 175
    const-string v10, "name"

    const-string v11, ""

    invoke-static {v0, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->accountName:Ljava/lang/String;

    .line 176
    const-string v10, "owner_id"

    sget-object v11, Lcom/zendesk/api/model/account/AccountConfig;->ZERO_LONG:Ljava/lang/Long;

    invoke-static {v0, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->accountOwnerId:Ljava/lang/Long;

    .line 177
    const-string v10, "sandbox"

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->accountSandbox:Ljava/lang/Boolean;

    .line 178
    const-string v10, "subdomain"

    const-string v11, ""

    invoke-static {v0, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->accountSubdomain:Ljava/lang/String;

    .line 179
    const-string v10, "time_format"

    invoke-static {v0, v10}, Lcom/zendesk/api/model/account/AccountConfig;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->account24HourTimeFormat:Ljava/lang/Integer;

    .line 180
    const-string v10, "url"

    const-string v11, ""

    invoke-static {v0, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->accountUrl:Ljava/lang/String;

    .line 183
    :cond_0
    const-string v10, "settings"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 185
    .local v4, settings:Lorg/json/JSONObject;
    if-eqz v4, :cond_7

    .line 187
    const-string v10, "apps"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 188
    .local v1, apps:Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 189
    const-string v10, "create_private"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->appsCreatePrivate:Ljava/lang/Boolean;

    .line 190
    const-string v10, "create_public"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->appsCreatePublic:Ljava/lang/Boolean;

    .line 191
    const-string v10, "use"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->appsUse:Ljava/lang/Boolean;

    .line 194
    :cond_1
    const-string v10, "chat"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 195
    .local v2, chat:Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 196
    const-string v10, "enabled"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->chatEnabled:Ljava/lang/Boolean;

    .line 197
    const-string v10, "maximum_request_count"

    new-instance v11, Ljava/lang/Integer;

    const/16 v12, 0xa

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->chatMaxRequestCount:Ljava/lang/Integer;

    .line 198
    const-string v10, "welcome_message"

    const-string v11, ""

    invoke-static {v2, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->chatWelcomeMessage:Ljava/lang/String;

    .line 201
    :cond_2
    const-string v10, "tickets"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 202
    .local v6, tickets:Lorg/json/JSONObject;
    if-eqz v6, :cond_3

    .line 203
    const-string v10, "agent_collision"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsAgentCollision:Ljava/lang/Boolean;

    .line 204
    const-string v10, "collaboration"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsCollaboration:Ljava/lang/Boolean;

    .line 205
    const-string v10, "comments_public_by_default"

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsCommentsPublicByDefault:Ljava/lang/Boolean;

    .line 206
    const-string v10, "list_empty_views"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsListEmptyViews:Ljava/lang/Boolean;

    .line 207
    const-string v10, "list_newest_comments_first"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsListNewestCommentsFirst:Ljava/lang/Boolean;

    .line 208
    const-string v10, "maximum_personal_views_to_list"

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v6, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsMaxPersonalViewsToList:Ljava/lang/Integer;

    .line 209
    const-string v10, "private_attachments"

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsPrivateAttachments:Ljava/lang/Boolean;

    .line 210
    const-string v10, "status_hold"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsUseStatusHold:Ljava/lang/Boolean;

    .line 211
    const-string v10, "tagging"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->ticketsTagging:Ljava/lang/Boolean;

    .line 214
    :cond_3
    const-string v10, "twitter"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 215
    .local v7, twitter:Lorg/json/JSONObject;
    if-eqz v7, :cond_4

    .line 216
    const-string v10, "shorten_url"

    const-string v11, ""

    invoke-static {v7, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->twitterShortenUrl:Ljava/lang/String;

    .line 219
    :cond_4
    const-string v10, "user"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 220
    .local v8, user:Lorg/json/JSONObject;
    if-eqz v8, :cond_5

    .line 221
    const-string v10, "tagging"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->userTagging:Ljava/lang/Boolean;

    .line 224
    :cond_5
    const-string v10, "voice"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 225
    .local v9, voice:Lorg/json/JSONObject;
    if-eqz v9, :cond_6

    .line 226
    const-string v10, "enabled"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->voiceEnabled:Ljava/lang/Boolean;

    .line 227
    const-string v10, "logging"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->voiceLogging:Ljava/lang/Boolean;

    .line 228
    const-string v10, "maintenance"

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->voiceMaintenance:Ljava/lang/Boolean;

    .line 231
    :cond_6
    const-string v10, "subscription"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 232
    .local v5, subscription:Lorg/json/JSONObject;
    if-eqz v5, :cond_7

    .line 233
    const-string v10, "active"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionActive:Ljava/lang/Boolean;

    .line 234
    const-string v10, "created_at"

    new-instance v11, Lcom/zendesk/api/model/shared/ZDDate;

    invoke-direct {v11}, Lcom/zendesk/api/model/shared/ZDDate;-><init>()V

    invoke-static {v5, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;Lcom/zendesk/api/model/shared/ZDDate;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionCreatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 235
    const-string v10, "days_left_in_trial"

    new-instance v11, Ljava/lang/Integer;

    const/16 v12, 0x1e

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v5, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionDaysLeftInTrial:Ljava/lang/Integer;

    .line 236
    const-string v10, "dunning"

    const-string v11, ""

    invoke-static {v5, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionDunning:Ljava/lang/String;

    .line 237
    const-string v10, "help_desk_size"

    const-string v11, ""

    invoke-static {v5, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionHelpDeskSize:Ljava/lang/String;

    .line 238
    const-string v10, "max_agents"

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v5, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionMaxAgents:Ljava/lang/Integer;

    .line 239
    const-string v10, "plan_name"

    const-string v11, ""

    invoke-static {v5, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionPlanName:Ljava/lang/String;

    .line 240
    const-string v10, "plan_type"

    const-string v11, ""

    invoke-static {v5, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionPlanType:Ljava/lang/String;

    .line 241
    const-string v10, "source"

    const-string v11, ""

    invoke-static {v5, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionSource:Ljava/lang/String;

    .line 242
    const-string v10, "suspended"

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionSuspended:Ljava/lang/Boolean;

    .line 243
    const-string v10, "trial"

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionTrial:Ljava/lang/Boolean;

    .line 244
    const-string v10, "updated_at"

    new-instance v11, Lcom/zendesk/api/model/shared/ZDDate;

    invoke-direct {v11}, Lcom/zendesk/api/model/shared/ZDDate;-><init>()V

    invoke-static {v5, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;Lcom/zendesk/api/model/shared/ZDDate;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionUpdatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 245
    const-string v10, "voice_customer"

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v10, v11}, Lcom/zendesk/api/model/account/AccountConfig;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/api/model/account/AccountConfig;->subscriptionVoiceCustomer:Ljava/lang/Boolean;

    .line 251
    .end local v1           #apps:Lorg/json/JSONObject;
    .end local v2           #chat:Lorg/json/JSONObject;
    .end local v5           #subscription:Lorg/json/JSONObject;
    .end local v6           #tickets:Lorg/json/JSONObject;
    .end local v7           #twitter:Lorg/json/JSONObject;
    .end local v8           #user:Lorg/json/JSONObject;
    .end local v9           #voice:Lorg/json/JSONObject;
    :cond_7
    invoke-virtual {p0}, Lcom/zendesk/api/model/account/AccountConfig;->getAccount24HourTimeFormat()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_8

    .line 252
    const-string v10, "h:mm a"

    invoke-static {v10}, Lcom/zendesk/api/model/shared/ZDDate;->setTimeFormat(Ljava/lang/String;)V

    .line 254
    :cond_8
    return-void
.end method
