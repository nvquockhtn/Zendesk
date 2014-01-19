.class public Lcom/zendesk/android/ticket/editors/EditMultiLineActivity;
.super Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;
.source "EditMultiLineActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 13
    sget v0, Lcom/zendesk/android/R$layout;->activity_edit_multiline:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditMultiLineActivity;->setContentView(I)V

    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditMultiLineActivity;->displayBackUp(Z)V

    .line 15
    sget v0, Lcom/zendesk/android/R$id;->edit_single_line_text_entry:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditMultiLineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/EditMultiLineActivity;->text:Landroid/widget/EditText;

    .line 18
    return-void
.end method
