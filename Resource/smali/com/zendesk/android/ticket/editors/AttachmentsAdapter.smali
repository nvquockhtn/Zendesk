.class public Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AttachmentsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/shared/Attachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/shared/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/shared/Attachment;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object p3, p0, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->attachments:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getAttachment(I)Lcom/zendesk/api/model/shared/Attachment;
    .locals 2
    .parameter "index"

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->attachments:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/shared/Attachment;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->attachments:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/shared/Attachment;

    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/Attachment;->getFilename()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 53
    .local v1, inflater:Landroid/view/LayoutInflater;
    if-nez p1, :cond_0

    .line 54
    sget v6, Lcom/zendesk/android/R$layout;->add_attachment_row:I

    invoke-virtual {v1, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .local v3, view:Landroid/widget/RelativeLayout;
    move-object v4, v3

    .line 68
    .end local v3           #view:Landroid/widget/RelativeLayout;
    .local v4, view:Landroid/widget/RelativeLayout;
    :goto_0
    return-object v4

    .line 58
    .end local v4           #view:Landroid/widget/RelativeLayout;
    :cond_0
    sget v6, Lcom/zendesk/android/R$layout;->attachment_row:I

    invoke-virtual {v1, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 60
    .restart local v3       #view:Landroid/widget/RelativeLayout;
    iget-object v6, p0, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->attachments:Ljava/util/List;

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/shared/Attachment;

    .line 61
    .local v0, a:Lcom/zendesk/api/model/shared/Attachment;
    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/Attachment;->getFilename()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, name:Ljava/lang/String;
    sget v6, Lcom/zendesk/android/R$id;->attachment_name:I

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    sget v6, Lcom/zendesk/android/R$id;->attachment_x:I

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 65
    .local v5, x:Landroid/widget/ImageButton;
    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v4, v3

    .line 68
    .end local v3           #view:Landroid/widget/RelativeLayout;
    .restart local v4       #view:Landroid/widget/RelativeLayout;
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->attachments:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method
