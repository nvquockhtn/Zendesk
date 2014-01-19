.class public Lcom/zendesk/android/ticket/TicketActivity$TabPageAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "TicketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/ticket/TicketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TabPageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/TicketActivity;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/ticket/TicketActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter "fm"

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketActivity$TabPageAdapter;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    .line 1017
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 1018
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1022
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 1027
    if-nez p1, :cond_0

    .line 1028
    new-instance v0, Lcom/zendesk/android/ticket/TicketCommentsFragment;

    invoke-direct {v0}, Lcom/zendesk/android/ticket/TicketCommentsFragment;-><init>()V

    .line 1033
    :goto_0
    return-object v0

    .line 1030
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1031
    new-instance v0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    invoke-direct {v0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;-><init>()V

    goto :goto_0

    .line 1033
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "position"

    .prologue
    .line 1038
    packed-switch p1, :pswitch_data_0

    .line 1046
    const-string v0, ""

    :goto_0
    return-object v0

    .line 1040
    :pswitch_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$TabPageAdapter;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zendesk/android/R$string;->ticket_tab_title_comments:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1043
    :pswitch_1
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$TabPageAdapter;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zendesk/android/R$string;->ticket_tab_title_properties:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1038
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
