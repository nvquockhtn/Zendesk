.class public Lcom/zendesk/android/macros/MacrosAdapter;
.super Lcom/zendesk/android/adapters/BaseListAdapter;
.source "MacrosAdapter.java"


# instance fields
.field private macros:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/macros/Macro;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/macros/Macro;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, macros:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/macros/Macro;>;"
    invoke-direct {p0, p1}, Lcom/zendesk/android/adapters/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p2, p0, Lcom/zendesk/android/macros/MacrosAdapter;->macros:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zendesk/android/macros/MacrosAdapter;->macros:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zendesk/android/macros/MacrosAdapter;->macros:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 26
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 41
    if-nez p2, :cond_0

    .line 42
    iget-object v3, p0, Lcom/zendesk/android/macros/MacrosAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/zendesk/android/R$layout;->edit_dropdown_row:I

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/zendesk/android/macros/MacrosAdapter;->macros:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/macros/Macro;

    .line 47
    .local v1, m:Lcom/zendesk/api/model/macros/Macro;
    sget v3, Lcom/zendesk/android/R$id;->edit_dropdown_row_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 48
    .local v2, name:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/zendesk/api/model/macros/Macro;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    sget v3, Lcom/zendesk/android/R$id;->edit_dropdown_chevron:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    .local v0, chevron:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/zendesk/api/model/macros/Macro;->getId()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_1

    .line 52
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    :goto_0
    return-object p2

    .line 54
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onItemClick(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 63
    return-void
.end method
