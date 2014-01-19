.class public Lcom/zendesk/android/ticket/editors/EditListAdapter;
.super Lcom/zendesk/android/adapters/BaseListAdapter;
.source "EditListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zendesk/android/adapters/BaseListAdapter;"
    }
.end annotation


# instance fields
.field private currentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private listValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/android/ticket/editors/Option",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/android/ticket/editors/Option",
            "<TE;>;>;TE;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListAdapter;,"Lcom/zendesk/android/ticket/editors/EditListAdapter<TE;>;"
    .local p2, listValues:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/android/ticket/editors/Option<TE;>;>;"
    .local p3, currentValue:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Lcom/zendesk/android/adapters/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Lcom/zendesk/android/ticket/editors/EditListAdapter;->listValues:Ljava/util/List;

    .line 24
    iput-object p3, p0, Lcom/zendesk/android/ticket/editors/EditListAdapter;->currentValue:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListAdapter;,"Lcom/zendesk/android/ticket/editors/EditListAdapter<TE;>;"
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditListAdapter;->listValues:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditListAdapter;->listValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 42
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListAdapter;,"Lcom/zendesk/android/ticket/editors/EditListAdapter<TE;>;"
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditListAdapter;->listValues:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditListAdapter;->listValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 29
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListAdapter;,"Lcom/zendesk/android/ticket/editors/EditListAdapter<TE;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListAdapter;,"Lcom/zendesk/android/ticket/editors/EditListAdapter<TE;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 50
    if-nez p2, :cond_0

    .line 51
    iget-object v6, p0, Lcom/zendesk/android/ticket/editors/EditListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/zendesk/android/R$layout;->edit_dropdown_row:I

    invoke-virtual {v6, v7, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 54
    :cond_0
    iget-object v6, p0, Lcom/zendesk/android/ticket/editors/EditListAdapter;->listValues:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/android/ticket/editors/Option;

    .line 56
    .local v3, o:Lcom/zendesk/android/ticket/editors/Option;,"Lcom/zendesk/android/ticket/editors/Option<TE;>;"
    sget v6, Lcom/zendesk/android/R$id;->edit_dropdown_row_name:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    .local v2, name:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/zendesk/android/ticket/editors/Option;->getDisplayString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, isCurrentValue:Z
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/zendesk/android/ticket/editors/Option;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 62
    :cond_1
    iget-object v6, p0, Lcom/zendesk/android/ticket/editors/EditListAdapter;->currentValue:Ljava/lang/Object;

    if-eqz v6, :cond_2

    move v1, v4

    .line 67
    :goto_0
    if-eqz v1, :cond_4

    .line 68
    sget v5, Lcom/zendesk/android/Colors;->LIST_SELECTED_GREEN:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    :goto_1
    sget v4, Lcom/zendesk/android/R$id;->edit_dropdown_chevron:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .local v0, chevron:Landroid/widget/ImageView;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    return-object p2

    .end local v0           #chevron:Landroid/widget/ImageView;
    :cond_2
    move v1, v5

    .line 62
    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {v3}, Lcom/zendesk/android/ticket/editors/Option;->getValue()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/zendesk/android/ticket/editors/EditListAdapter;->currentValue:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 71
    :cond_4
    sget v4, Lcom/zendesk/android/Colors;->DARK_TEXT:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1
.end method

.method protected onItemClick(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 84
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListAdapter;,"Lcom/zendesk/android/ticket/editors/EditListAdapter<TE;>;"
    return-void
.end method
