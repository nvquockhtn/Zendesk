.class public Lcom/zendesk/android/ticket/editors/EditDropdownAdapter;
.super Lcom/zendesk/android/adapters/BaseListAdapter;
.source "EditDropdownAdapter.java"


# instance fields
.field private customFieldOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/CustomFieldOption;",
            ">;"
        }
    .end annotation
.end field

.field private ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zendesk/api/model/ticket/TicketFieldEntry;Ljava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/CustomFieldOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    .local p3, customFieldOptions:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/account/CustomFieldOption;>;"
    invoke-direct {p0, p1}, Lcom/zendesk/android/adapters/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lcom/zendesk/android/ticket/editors/EditDropdownAdapter;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 26
    iput-object p3, p0, Lcom/zendesk/android/ticket/editors/EditDropdownAdapter;->customFieldOptions:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditDropdownAdapter;->customFieldOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditDropdownAdapter;->customFieldOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 31
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

    .line 46
    if-nez p2, :cond_0

    .line 47
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditDropdownAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/zendesk/android/R$layout;->edit_dropdown_row:I

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 50
    :cond_0
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditDropdownAdapter;->customFieldOptions:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/CustomFieldOption;

    .line 52
    .local v0, cfo:Lcom/zendesk/api/model/account/CustomFieldOption;
    sget v3, Lcom/zendesk/android/R$id;->edit_dropdown_row_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 53
    .local v2, name:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/CustomFieldOption;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget v3, Lcom/zendesk/android/R$id;->edit_dropdown_chevron:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 56
    .local v1, chevron:Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/CustomFieldOption;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    :goto_0
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/CustomFieldOption;->isGroup()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/CustomFieldOption;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditDropdownAdapter;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    sget v3, Lcom/zendesk/android/Colors;->LIST_SELECTED_GREEN:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    :goto_1
    return-object p2

    .line 59
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 66
    :cond_2
    sget v3, Lcom/zendesk/android/Colors;->DARK_TEXT:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1
.end method

.method protected onItemClick(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 76
    return-void
.end method
