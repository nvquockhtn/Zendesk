.class public Lcom/zendesk/android/forums/ForumCommentAdapter;
.super Lcom/zendesk/android/adapters/BaseListAdapter;
.source "ForumCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;
    }
.end annotation


# instance fields
.field private activityRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/forums/TopicComment;",
            ">;"
        }
    .end annotation
.end field

.field private html:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation
.end field

.field private topic:Lcom/zendesk/api/model/forums/Topic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/zendesk/api/model/forums/Topic;)V
    .locals 1
    .parameter "context"
    .parameter "activity"
    .parameter "topic"

    .prologue
    .line 43
    invoke-direct {p0, p2}, Lcom/zendesk/android/adapters/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter;->html:Ljava/util/LinkedHashMap;

    .line 44
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter;->activityRef:Ljava/lang/ref/SoftReference;

    .line 45
    iput-object p3, p0, Lcom/zendesk/android/forums/ForumCommentAdapter;->topic:Lcom/zendesk/api/model/forums/Topic;

    .line 46
    invoke-virtual {p3}, Lcom/zendesk/api/model/forums/Topic;->getComments()Lcom/zendesk/api/model/forums/Topic$TopicComments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/forums/Topic$TopicComments;->getListItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter;->comments:Ljava/util/List;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/forums/ForumCommentAdapter;Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/zendesk/android/forums/ForumCommentAdapter;->loadAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zendesk/android/forums/ForumCommentAdapter;Lcom/zendesk/api/model/users/User;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zendesk/android/forums/ForumCommentAdapter;->getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/zendesk/android/forums/ForumCommentAdapter;)Ljava/lang/ref/SoftReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter;->activityRef:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method private addSectionHeader(Landroid/view/ViewGroup;Lcom/zendesk/api/model/forums/TopicComment;Landroid/widget/LinearLayout;)V
    .locals 5
    .parameter "parent"
    .parameter "p"
    .parameter "headerContainer"

    .prologue
    .line 137
    iget-object v2, p0, Lcom/zendesk/android/forums/ForumCommentAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/zendesk/android/R$layout;->comment_section_header:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 138
    .local v0, header:Landroid/widget/RelativeLayout;
    sget v2, Lcom/zendesk/android/R$id;->comment_section_header_text:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 139
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/zendesk/api/model/forums/TopicComment;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/shared/ZDDate;->getDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method private getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I
    .locals 2
    .parameter "u"

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getRole()Lcom/zendesk/api/model/users/Role;

    move-result-object v0

    sget-object v1, Lcom/zendesk/api/model/users/Role;->SYSTEM:Lcom/zendesk/api/model/users/Role;

    if-ne v0, v1, :cond_0

    .line 216
    sget v0, Lcom/zendesk/android/R$drawable;->user_system_avatar:I

    .line 218
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/zendesk/android/R$drawable;->user_default_avatar:I

    goto :goto_0
.end method

.method private isNewSection(ILcom/zendesk/api/model/forums/TopicComment;)Z
    .locals 7
    .parameter "pos"
    .parameter "p"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 123
    if-nez p1, :cond_0

    move v2, v3

    .line 132
    :goto_0
    return v2

    .line 125
    :cond_0
    invoke-virtual {p2}, Lcom/zendesk/api/model/forums/TopicComment;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/shared/ZDDate;->getCal()Ljava/util/Calendar;

    move-result-object v0

    .line 126
    .local v0, commentCal:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/zendesk/android/forums/ForumCommentAdapter;->comments:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/forums/TopicComment;

    invoke-virtual {v2}, Lcom/zendesk/api/model/forums/TopicComment;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/shared/ZDDate;->getCal()Ljava/util/Calendar;

    move-result-object v1

    .line 128
    .local v1, prevCommentCal:Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_2

    move v2, v3

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_3

    move v2, v3

    goto :goto_0

    .line 132
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;)V
    .locals 1
    .parameter "u"
    .parameter "row"

    .prologue
    .line 185
    new-instance v0, Lcom/zendesk/android/forums/ForumCommentAdapter$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/zendesk/android/forums/ForumCommentAdapter$2;-><init>(Lcom/zendesk/android/forums/ForumCommentAdapter;Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;Lcom/zendesk/api/model/users/User;)V

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/users/User;->getAvatar(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 212
    return-void
.end method

.method private loadUser(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;)V
    .locals 1
    .parameter "u"
    .parameter "row"

    .prologue
    .line 159
    new-instance v0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/zendesk/android/forums/ForumCommentAdapter$1;-><init>(Lcom/zendesk/android/forums/ForumCommentAdapter;Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;)V

    .line 181
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter;->comments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 72
    if-nez p2, :cond_0

    .line 73
    iget-object v6, p0, Lcom/zendesk/android/forums/ForumCommentAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/zendesk/android/R$layout;->forum_comment_row:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 76
    :cond_0
    iget-object v6, p0, Lcom/zendesk/android/forums/ForumCommentAdapter;->comments:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/forums/TopicComment;

    .line 78
    .local v2, p:Lcom/zendesk/api/model/forums/TopicComment;
    iget-object v6, p0, Lcom/zendesk/android/forums/ForumCommentAdapter;->html:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lcom/zendesk/api/model/forums/TopicComment;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/Spanned;

    .line 80
    .local v4, spanned:Landroid/text/Spanned;
    if-nez v4, :cond_1

    .line 81
    invoke-virtual {v2}, Lcom/zendesk/api/model/forums/TopicComment;->getBody()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https://"

    const-string v8, "webViewHttps://"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, temp:Ljava/lang/String;
    const-string v6, "http://"

    const-string v7, "webViewHttp://"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 86
    .end local v5           #temp:Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;

    invoke-direct {v3, p0, p2, p3}, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;-><init>(Lcom/zendesk/android/forums/ForumCommentAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 87
    .local v3, row:Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;
    iget-object v6, v3, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->body:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v6, v3, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->body:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 90
    iget-object v6, v3, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/zendesk/api/model/forums/TopicComment;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/shared/ZDDate;->getTimeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/ZendeskModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v6

    invoke-virtual {v2}, Lcom/zendesk/api/model/forums/TopicComment;->getUserId()Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v0

    .line 92
    .local v0, author:Lcom/zendesk/api/model/users/User;
    iget-object v6, v3, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentAuthor:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget v6, Lcom/zendesk/android/R$id;->forum_comment_section_header_container:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 96
    .local v1, headerContainer:Landroid/widget/LinearLayout;
    invoke-direct {p0, p1, v2}, Lcom/zendesk/android/forums/ForumCommentAdapter;->isNewSection(ILcom/zendesk/api/model/forums/TopicComment;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 97
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 98
    invoke-direct {p0, p3, v2, v1}, Lcom/zendesk/android/forums/ForumCommentAdapter;->addSectionHeader(Landroid/view/ViewGroup;Lcom/zendesk/api/model/forums/TopicComment;Landroid/widget/LinearLayout;)V

    .line 103
    :goto_0
    iget-object v6, v3, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentAvatar:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->fullyLoaded()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 106
    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->avatarAvailable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 107
    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getPhotoURL()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 108
    iget-object v6, v3, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getLocalFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 119
    :goto_1
    return-object p2

    .line 100
    :cond_2
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v6, v3, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentAvatar:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/zendesk/android/forums/ForumCommentAdapter;->getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 113
    :cond_4
    invoke-direct {p0, v0, v3}, Lcom/zendesk/android/forums/ForumCommentAdapter;->loadAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;)V

    goto :goto_1

    .line 116
    :cond_5
    invoke-direct {p0, v0, v3}, Lcom/zendesk/android/forums/ForumCommentAdapter;->loadUser(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;)V

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter;->topic:Lcom/zendesk/api/model/forums/Topic;

    invoke-virtual {v0}, Lcom/zendesk/api/model/forums/Topic;->getComments()Lcom/zendesk/api/model/forums/Topic$TopicComments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/forums/Topic$TopicComments;->getListItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter;->comments:Ljava/util/List;

    .line 52
    invoke-super {p0}, Lcom/zendesk/android/adapters/BaseListAdapter;->notifyDataSetChanged()V

    .line 53
    return-void
.end method

.method protected onItemClick(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 224
    return-void
.end method
