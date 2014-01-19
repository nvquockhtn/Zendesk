.class Lcom/zendesk/android/ticket/editors/EditTagsActivity$2;
.super Ljava/lang/Object;
.source "EditTagsActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 71
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/EditTagsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/EditTagsActivity;

    iget-object v1, v1, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/EditTagsActivity;

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/EditTagsActivity;

    iget-object v2, v2, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/zendesk/android/ticket/editors/EditTagsActivity;->addTag(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->access$000(Lcom/zendesk/android/ticket/editors/EditTagsActivity;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/EditTagsActivity;

    iget-object v1, v1, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
