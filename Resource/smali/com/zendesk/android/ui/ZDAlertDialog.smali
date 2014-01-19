.class public Lcom/zendesk/android/ui/ZDAlertDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ZDAlertDialog.java"


# static fields
.field private static final MESSAGE_KEY:Ljava/lang/String; = "message"

.field private static final NEGATIVE_BUTTON_KEY:Ljava/lang/String; = "negativeButton"

.field private static final POSITIVE_BUTTON_KEY:Ljava/lang/String; = "positiveButton"

.field private static final TITLE_KEY:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;
    .locals 4
    .parameter "title"
    .parameter "message"
    .parameter "positiveButton"

    .prologue
    .line 40
    new-instance v1, Lcom/zendesk/android/ui/ZDAlertDialog;

    invoke-direct {v1}, Lcom/zendesk/android/ui/ZDAlertDialog;-><init>()V

    .line 41
    .local v1, frag:Lcom/zendesk/android/ui/ZDAlertDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "positiveButton"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v2, "negativeButton"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    invoke-virtual {v1, v0}, Lcom/zendesk/android/ui/ZDAlertDialog;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v1
.end method

.method public static newInstance(ILjava/lang/String;II)Lcom/zendesk/android/ui/ZDAlertDialog;
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "positiveButton"
    .parameter "negativeButton"

    .prologue
    .line 18
    new-instance v1, Lcom/zendesk/android/ui/ZDAlertDialog;

    invoke-direct {v1}, Lcom/zendesk/android/ui/ZDAlertDialog;-><init>()V

    .line 19
    .local v1, frag:Lcom/zendesk/android/ui/ZDAlertDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v2, "positiveButton"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    const-string v2, "negativeButton"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    invoke-virtual {v1, v0}, Lcom/zendesk/android/ui/ZDAlertDialog;->setArguments(Landroid/os/Bundle;)V

    .line 25
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;
    .locals 4
    .parameter "message"
    .parameter "positiveButton"

    .prologue
    const/4 v3, -0x1

    .line 29
    new-instance v1, Lcom/zendesk/android/ui/ZDAlertDialog;

    invoke-direct {v1}, Lcom/zendesk/android/ui/ZDAlertDialog;-><init>()V

    .line 30
    .local v1, frag:Lcom/zendesk/android/ui/ZDAlertDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    const-string v2, "message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v2, "positiveButton"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    const-string v2, "negativeButton"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    invoke-virtual {v1, v0}, Lcom/zendesk/android/ui/ZDAlertDialog;->setArguments(Landroid/os/Bundle;)V

    .line 36
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 53
    .local v4, title:I
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "positiveButton"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 55
    .local v3, positiveButton:I
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "negativeButton"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 57
    .local v2, negativeButton:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDAlertDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-ltz v4, :cond_0

    .line 60
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 64
    :cond_0
    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 67
    :cond_1
    if-ltz v2, :cond_2

    .line 69
    new-instance v5, Lcom/zendesk/android/ui/ZDAlertDialog$1;

    invoke-direct {v5, p0}, Lcom/zendesk/android/ui/ZDAlertDialog$1;-><init>(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    new-instance v5, Lcom/zendesk/android/ui/ZDAlertDialog$2;

    invoke-direct {v5, p0}, Lcom/zendesk/android/ui/ZDAlertDialog$2;-><init>(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 91
    :cond_2
    new-instance v5, Lcom/zendesk/android/ui/ZDAlertDialog$3;

    invoke-direct {v5, p0}, Lcom/zendesk/android/ui/ZDAlertDialog$3;-><init>(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
