.class public Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TagsAutocompleteAdapter.java"

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
.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->tags:Ljava/util/List;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->tags:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->tags:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter$1;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter$1;-><init>(Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;)V

    .line 71
    .local v0, myFilter:Landroid/widget/Filter;
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, inflater:Landroid/view/LayoutInflater;
    move-object v2, p2

    .line 79
    check-cast v2, Landroid/widget/TextView;

    .line 80
    .local v2, view:Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 81
    const v3, 0x109000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2           #view:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 83
    .restart local v2       #view:Landroid/widget/TextView;
    :cond_0
    sget v3, Lcom/zendesk/android/Colors;->DARK_TEXT:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    sget v3, Lcom/zendesk/android/Colors;->WHITE:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 86
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->tags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, tag:Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-object v2
.end method
