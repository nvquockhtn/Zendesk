.class public Lcom/zendesk/android/user/UserProfileAdapter;
.super Lcom/zendesk/android/adapters/BaseListAdapter;
.source "UserProfileAdapter.java"


# instance fields
.field private rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/android/ticket/editors/Option",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zendesk/api/model/users/User;)V
    .locals 10
    .parameter "context"
    .parameter "user"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/zendesk/android/adapters/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    .line 29
    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getIdentityString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zendesk/api/model/ZDModelObject;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 30
    iget-object v5, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    new-instance v6, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getIdentityString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/zendesk/android/R$string;->user_profile_email:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zendesk/api/model/ZDModelObject;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 33
    iget-object v5, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    new-instance v6, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getPhone()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/zendesk/android/R$string;->user_profile_phone_number:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_1
    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getTwitterAccount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zendesk/api/model/ZDModelObject;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 36
    iget-object v5, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    new-instance v6, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getTwitterAccount()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/zendesk/android/R$string;->user_profile_twitter:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_2
    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zendesk/api/model/ZDModelObject;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 41
    .local v1, res:Landroid/content/res/Resources;
    sget v5, Lcom/zendesk/android/R$string;->user_profile_in_the_time_zone:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getTimezone()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, text:Ljava/lang/String;
    iget-object v5, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    new-instance v6, Lcom/zendesk/android/ticket/editors/Option;

    sget v7, Lcom/zendesk/android/R$string;->user_profile_time_zone_Label:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .end local v1           #res:Landroid/content/res/Resources;
    .end local v4           #text:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 45
    iget-object v5, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    new-instance v6, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/shared/ZDDate;->getDateString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/zendesk/android/R$string;->user_profile_created:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_4
    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getLastLogin()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 48
    iget-object v5, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    new-instance v6, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getLastLogin()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/shared/ZDDate;->getDateString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/zendesk/android/R$string;->user_profile_last_login:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_5
    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getGroupMembership()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getGroupMembership()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 54
    iget-object v5, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    new-instance v6, Lcom/zendesk/android/ticket/editors/Option;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getGroupMembership()Ljava/util/List;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zendesk/api/model/strings/UserStrings;->getGroupMembershipString(Landroid/content/res/Resources;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_6
    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getOrganization()Lcom/zendesk/api/model/users/Organization;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 57
    iget-object v5, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    new-instance v6, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getOrganization()Lcom/zendesk/api/model/users/Organization;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/users/Organization;->getName()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/zendesk/android/R$string;->user_profile_organization:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_7
    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getCurrentTags()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getCurrentTags()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    .end local v2           #s:Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 65
    .restart local v2       #s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 66
    iget-object v5, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    new-instance v6, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/zendesk/android/R$string;->user_profile_tags:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #s:Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_9
    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getDetails()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zendesk/api/model/ZDModelObject;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 70
    iget-object v5, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    new-instance v6, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getDetails()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/zendesk/android/R$string;->user_profile_details:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_a
    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getNotes()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zendesk/api/model/ZDModelObject;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 73
    iget-object v5, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    new-instance v6, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {p2}, Lcom/zendesk/api/model/users/User;->getNotes()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/zendesk/android/R$string;->user_profile_notes:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_b
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 80
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 96
    iget-object v4, p0, Lcom/zendesk/android/user/UserProfileAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/zendesk/android/R$layout;->user_profile_row:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 98
    iget-object v4, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/android/ticket/editors/Option;

    .line 100
    .local v1, o:Lcom/zendesk/android/ticket/editors/Option;,"Lcom/zendesk/android/ticket/editors/Option<Ljava/lang/String;>;"
    sget v4, Lcom/zendesk/android/R$id;->user_profile_row_title:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    .local v2, title:Landroid/widget/TextView;
    sget v4, Lcom/zendesk/android/R$id;->user_profile_row_value:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 103
    .local v3, value:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/zendesk/android/user/UserProfileAdapter;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_0

    .line 104
    sget v4, Lcom/zendesk/android/R$id;->user_profile_row_divider:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, divider:Landroid/view/View;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .end local v0           #divider:Landroid/view/View;
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 109
    invoke-virtual {v1}, Lcom/zendesk/android/ticket/editors/Option;->getDisplayString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v1}, Lcom/zendesk/android/ticket/editors/Option;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const/4 v4, 0x7

    invoke-static {v3, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 113
    return-object p2
.end method

.method protected onItemClick(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 119
    return-void
.end method
