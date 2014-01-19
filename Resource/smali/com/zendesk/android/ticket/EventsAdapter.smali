.class public Lcom/zendesk/android/ticket/EventsAdapter;
.super Lcom/zendesk/android/adapters/BaseListAdapter;
.source "EventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/ticket/EventsAdapter$4;,
        Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;,
        Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;
    }
.end annotation


# instance fields
.field private avatarCache:Lcom/zendesk/android/ui/AvatarCache;

.field private comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/audits/TicketAudit;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;

.field private ticketActivity:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private uiHandler:Landroid/os/Handler;

.field private userProfileClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/ticket/Ticket;Landroid/app/Activity;Lcom/zendesk/android/ui/AvatarCache;Landroid/os/Handler;)V
    .locals 1
    .parameter "ticket"
    .parameter "activity"
    .parameter "avatarCache"
    .parameter "uiHandler"

    .prologue
    .line 49
    invoke-direct {p0, p2}, Lcom/zendesk/android/adapters/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->comments:Ljava/util/List;

    .line 332
    new-instance v0, Lcom/zendesk/android/ticket/EventsAdapter$3;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/EventsAdapter$3;-><init>(Lcom/zendesk/android/ticket/EventsAdapter;)V

    iput-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;

    .line 50
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->ticketActivity:Ljava/lang/ref/SoftReference;

    .line 51
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->context:Landroid/content/Context;

    .line 52
    iput-object p1, p0, Lcom/zendesk/android/ticket/EventsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 53
    iput-object p3, p0, Lcom/zendesk/android/ticket/EventsAdapter;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    .line 54
    iput-object p4, p0, Lcom/zendesk/android/ticket/EventsAdapter;->uiHandler:Landroid/os/Handler;

    .line 55
    invoke-direct {p0}, Lcom/zendesk/android/ticket/EventsAdapter;->updateCommentsList()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticket/EventsAdapter;Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/zendesk/android/ticket/EventsAdapter;->setAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zendesk/android/ticket/EventsAdapter;)Ljava/lang/ref/SoftReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->ticketActivity:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zendesk/android/ticket/EventsAdapter;Lcom/zendesk/api/model/users/User;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/zendesk/android/ticket/EventsAdapter;->getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/zendesk/android/ticket/EventsAdapter;Ljava/lang/String;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/zendesk/android/ticket/EventsAdapter;->setImageURI(Ljava/lang/String;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zendesk/android/ticket/EventsAdapter;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zendesk/android/ticket/EventsAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zendesk/android/ticket/EventsAdapter;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    return-object v0
.end method

.method private addEventRow(Lcom/zendesk/api/model/ticket/audits/AuditEvent;Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "ae"
    .parameter "row"
    .parameter "parent"

    .prologue
    .line 119
    iget-object v2, p0, Lcom/zendesk/android/ticket/EventsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/zendesk/android/R$layout;->event_row:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 121
    .local v0, eventRow:Landroid/widget/RelativeLayout;
    sget v2, Lcom/zendesk/android/R$id;->event_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 126
    .local v1, icon:Landroid/widget/ImageView;
    sget-object v2, Lcom/zendesk/android/ticket/EventsAdapter$4;->$SwitchMap$com$zendesk$api$model$ticket$audits$AuditEventType:[I

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;->getType()Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 145
    sget v2, Lcom/zendesk/android/R$drawable;->icon_check:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    :goto_0
    iget-object v2, p2, Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;->bodyArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    return-void

    .line 128
    :pswitch_0
    sget v2, Lcom/zendesk/android/R$drawable;->icon_comment:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 133
    :pswitch_1
    sget v2, Lcom/zendesk/android/R$drawable;->icon_comment:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 138
    :pswitch_2
    sget v2, Lcom/zendesk/android/R$drawable;->icon_mail:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private checkSectionHeader(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V
    .locals 5
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"
    .parameter "ta"

    .prologue
    .line 155
    sget v2, Lcom/zendesk/android/R$id;->comment_section_header_container:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 156
    .local v0, commentSectionHeader:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 157
    invoke-direct {p0, p1, p4}, Lcom/zendesk/android/ticket/EventsAdapter;->isNewSection(ILcom/zendesk/api/model/ticket/audits/TicketAudit;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/zendesk/android/ticket/EventsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/zendesk/android/R$layout;->comment_section_header:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 159
    .local v1, sectionHeader:Landroid/widget/RelativeLayout;
    sget v2, Lcom/zendesk/android/R$id;->comment_section_header_text:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p4}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/shared/ZDDate;->getDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    .end local v1           #sectionHeader:Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method private getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I
    .locals 2
    .parameter "u"

    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getRole()Lcom/zendesk/api/model/users/Role;

    move-result-object v0

    sget-object v1, Lcom/zendesk/api/model/users/Role;->SYSTEM:Lcom/zendesk/api/model/users/Role;

    if-ne v0, v1, :cond_0

    .line 276
    sget v0, Lcom/zendesk/android/R$drawable;->user_system_avatar:I

    .line 278
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/zendesk/android/R$drawable;->user_default_avatar:I

    goto :goto_0
.end method

.method private isNewSection(ILcom/zendesk/api/model/ticket/audits/TicketAudit;)Z
    .locals 7
    .parameter "pos"
    .parameter "ta"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 165
    if-nez p1, :cond_0

    move v2, v3

    .line 174
    :goto_0
    return v2

    .line 167
    :cond_0
    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/shared/ZDDate;->getCal()Ljava/util/Calendar;

    move-result-object v0

    .line 168
    .local v0, commentCal:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/zendesk/android/ticket/EventsAdapter;->comments:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/shared/ZDDate;->getCal()Ljava/util/Calendar;

    move-result-object v1

    .line 170
    .local v1, prevCommentCal:Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_2

    move v2, v3

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_3

    move v2, v3

    goto :goto_0

    .line 174
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;)V
    .locals 1
    .parameter "u"
    .parameter "header"

    .prologue
    .line 252
    new-instance v0, Lcom/zendesk/android/ticket/EventsAdapter$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/zendesk/android/ticket/EventsAdapter$2;-><init>(Lcom/zendesk/android/ticket/EventsAdapter;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;Lcom/zendesk/api/model/users/User;)V

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/users/User;->getAvatar(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 272
    return-void
.end method

.method private loadUser(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;)V
    .locals 1
    .parameter "u"
    .parameter "header"

    .prologue
    .line 223
    new-instance v0, Lcom/zendesk/android/ticket/EventsAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/zendesk/android/ticket/EventsAdapter$1;-><init>(Lcom/zendesk/android/ticket/EventsAdapter;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;Lcom/zendesk/api/model/users/User;)V

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/users/User;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 248
    return-void
.end method

.method private populateHeader(Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;Lcom/zendesk/api/model/ticket/audits/TicketAudit;Landroid/view/ViewGroup;)V
    .locals 7
    .parameter "row"
    .parameter "ta"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, commentHeader:Landroid/view/View;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/ZendeskModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v4

    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getAuthorId()Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v3

    .line 182
    .local v3, u:Lcom/zendesk/api/model/users/User;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/ZendeskModel;->getGroups()Lcom/zendesk/api/model/users/Groups;

    move-result-object v4

    invoke-virtual {v3}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zendesk/api/model/users/Groups;->isAgent(Ljava/lang/Long;)Z

    move-result v2

    .line 184
    .local v2, isAgent:Z
    if-eqz v2, :cond_0

    .line 185
    iget-object v4, p0, Lcom/zendesk/android/ticket/EventsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/zendesk/android/R$layout;->comment_header_agent:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 190
    :goto_0
    iget-object v4, p0, Lcom/zendesk/android/ticket/EventsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    new-instance v1, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;-><init>(Lcom/zendesk/android/ticket/EventsAdapter;Landroid/view/View;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V

    .line 195
    .local v1, header:Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;
    iget-object v4, v1, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->auditTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/shared/ZDDate;->getTimeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v4, v1, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->icon:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v4, p1, Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 199
    iget-object v4, p1, Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    iget-object v4, v1, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->author:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v4, v1, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {v3}, Lcom/zendesk/api/model/users/User;->fullyLoaded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    invoke-direct {p0, v3, v1}, Lcom/zendesk/android/ticket/EventsAdapter;->setAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;)V

    .line 209
    :goto_1
    return-void

    .line 187
    .end local v1           #header:Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;
    :cond_0
    iget-object v4, p0, Lcom/zendesk/android/ticket/EventsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/zendesk/android/R$layout;->comment_header_requester:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 207
    .restart local v1       #header:Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;
    :cond_1
    invoke-direct {p0, v3, v1}, Lcom/zendesk/android/ticket/EventsAdapter;->loadUser(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;)V

    goto :goto_1
.end method

.method private setAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;)V
    .locals 2
    .parameter "u"
    .parameter "header"

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getAvatarState()Lcom/zendesk/api/model/shared/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/zendesk/api/model/shared/DownloadState;->DOWNLOADED:Lcom/zendesk/api/model/shared/DownloadState;

    if-ne v0, v1, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/zendesk/android/ticket/EventsAdapter;->setImageURI(Ljava/lang/String;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;Ljava/lang/Object;)V

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getAvatarState()Lcom/zendesk/api/model/shared/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/zendesk/api/model/shared/DownloadState;->LOCAL:Lcom/zendesk/api/model/shared/DownloadState;

    if-ne v0, v1, :cond_1

    .line 215
    iget-object v0, p2, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->avatar:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/zendesk/android/ticket/EventsAdapter;->getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/zendesk/android/ticket/EventsAdapter;->loadAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;)V

    goto :goto_0
.end method

.method private setImageURI(Ljava/lang/String;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;Ljava/lang/Object;)V
    .locals 6
    .parameter "filePath"
    .parameter "header"
    .parameter "requiredTag"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    iget-object v1, p0, Lcom/zendesk/android/ticket/EventsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p2, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->avatar:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/zendesk/android/ticket/EventsAdapter;->uiHandler:Landroid/os/Handler;

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/zendesk/android/ui/AvatarCache;->getBitmap(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/widget/ImageView;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 286
    :cond_0
    return-void
.end method

.method private updateCommentsList()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->getListItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->comments:Ljava/util/List;

    .line 71
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->comments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 85
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 90
    iget-object v4, p0, Lcom/zendesk/android/ticket/EventsAdapter;->comments:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    .line 92
    .local v3, ta:Lcom/zendesk/api/model/ticket/audits/TicketAudit;
    if-nez p2, :cond_0

    .line 93
    iget-object v4, p0, Lcom/zendesk/android/ticket/EventsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/zendesk/android/R$layout;->audit_row:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 95
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    new-instance v2, Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;

    invoke-direct {v2, p0, p2, p3, v3}, Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;-><init>(Lcom/zendesk/android/ticket/EventsAdapter;Landroid/view/View;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V

    .line 98
    .local v2, row:Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;
    iget-object v4, v2, Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;->bodyArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 99
    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getEvents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/ticket/audits/AuditEvent;

    .line 100
    .local v0, ae:Lcom/zendesk/api/model/ticket/audits/AuditEvent;
    invoke-direct {p0, v0, v2, p3}, Lcom/zendesk/android/ticket/EventsAdapter;->addEventRow(Lcom/zendesk/api/model/ticket/audits/AuditEvent;Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 103
    .end local v0           #ae:Lcom/zendesk/api/model/ticket/audits/AuditEvent;
    :cond_1
    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getMetadata()Lcom/zendesk/api/model/ticket/audits/AuditMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/AuditMetadata;->getSystem()Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->getClient()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getMetadata()Lcom/zendesk/api/model/ticket/audits/AuditMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/AuditMetadata;->getSystem()Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->getClient()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 104
    iget-object v4, v2, Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;->client:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v4, v2, Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;->client:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getMetadata()Lcom/zendesk/api/model/ticket/audits/AuditMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/audits/AuditMetadata;->getSystem()Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/audits/AuditMetadata$AuditMetadataSystem;->getClient()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_1
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/zendesk/android/ticket/EventsAdapter;->checkSectionHeader(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V

    .line 111
    invoke-direct {p0, v2, v3, p3}, Lcom/zendesk/android/ticket/EventsAdapter;->populateHeader(Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;Lcom/zendesk/api/model/ticket/audits/TicketAudit;Landroid/view/ViewGroup;)V

    .line 113
    return-object p2

    .line 107
    :cond_2
    iget-object v4, v2, Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;->client:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/zendesk/android/ticket/EventsAdapter;->updateCommentsList()V

    .line 66
    invoke-super {p0}, Lcom/zendesk/android/adapters/BaseListAdapter;->notifyDataSetChanged()V

    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 351
    iput-object v1, p0, Lcom/zendesk/android/ticket/EventsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 352
    iput-object v1, p0, Lcom/zendesk/android/ticket/EventsAdapter;->ticketActivity:Ljava/lang/ref/SoftReference;

    .line 353
    iput-object v1, p0, Lcom/zendesk/android/ticket/EventsAdapter;->context:Landroid/content/Context;

    .line 354
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 355
    iput-object v1, p0, Lcom/zendesk/android/ticket/EventsAdapter;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    .line 356
    return-void
.end method

.method protected onItemClick(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 361
    return-void
.end method

.method public setTicket(Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 0
    .parameter "ticket"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zendesk/android/ticket/EventsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 60
    invoke-direct {p0}, Lcom/zendesk/android/ticket/EventsAdapter;->updateCommentsList()V

    .line 61
    return-void
.end method
