.class public Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EditAssigneeAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private group:Lcom/zendesk/api/model/users/Group;

.field private users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/zendesk/api/model/users/Group;)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "group"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-object p3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->group:Lcom/zendesk/api/model/users/Group;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->users:Ljava/util/List;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->users:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;)Lcom/zendesk/api/model/users/Group;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->group:Lcom/zendesk/api/model/users/Group;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter$1;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter$1;-><init>(Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;)V

    .line 82
    .local v0, myFilter:Landroid/widget/Filter;
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->users:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/users/User;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser(I)Lcom/zendesk/api/model/users/User;
    .locals 1
    .parameter "position"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->users:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/users/User;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 90
    .local v1, inflater:Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 91
    sget v4, Lcom/zendesk/android/R$layout;->user_autocomplete_row:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 93
    .restart local p2
    :cond_0
    sget v4, Lcom/zendesk/android/Colors;->WHITE:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    sget v4, Lcom/zendesk/android/R$id;->user_autocomplete_name:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 96
    .local v2, name:Landroid/widget/TextView;
    sget v4, Lcom/zendesk/android/R$id;->user_autocomplete_email:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    .local v0, email:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->users:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/api/model/users/User;

    .line 99
    .local v3, user:Lcom/zendesk/api/model/users/User;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v3}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v3}, Lcom/zendesk/api/model/users/User;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-object p2
.end method
