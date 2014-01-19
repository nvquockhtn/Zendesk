.class Lcom/zendesk/android/ticket/editors/EditTagsActivity$1;
.super Ljava/lang/Object;
.source "EditTagsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/editors/EditTagsActivity;->createIU(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/editors/EditTagsActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/editors/EditTagsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditTagsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditTagsActivity;

    iget-object v0, v0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditTagsActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/zendesk/android/ticket/editors/EditTagsActivity;->addTag(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->access$000(Lcom/zendesk/android/ticket/editors/EditTagsActivity;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditTagsActivity;

    iget-object v0, v0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditTagsActivity;

    iget-object v0, v0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditTagsActivity;

    iget-object v0, v0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 57
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 54
    return-void
.end method
