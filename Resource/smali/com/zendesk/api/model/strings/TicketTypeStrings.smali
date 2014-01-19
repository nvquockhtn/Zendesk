.class public Lcom/zendesk/api/model/strings/TicketTypeStrings;
.super Ljava/lang/Object;
.source "TicketTypeStrings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/strings/TicketTypeStrings$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketType;)Ljava/lang/String;
    .locals 2
    .parameter "resources"
    .parameter "type"

    .prologue
    .line 12
    sget-object v0, Lcom/zendesk/api/model/strings/TicketTypeStrings$1;->$SwitchMap$com$zendesk$api$model$account$TicketType:[I

    invoke-virtual {p1}, Lcom/zendesk/api/model/account/TicketType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 24
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 14
    :pswitch_0
    sget v0, Lcom/zendesk/android/R$string;->type_incident:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :pswitch_1
    sget v0, Lcom/zendesk/android/R$string;->type_problem:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 18
    :pswitch_2
    sget v0, Lcom/zendesk/android/R$string;->type_question:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 20
    :pswitch_3
    sget v0, Lcom/zendesk/android/R$string;->type_task:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 22
    :pswitch_4
    sget v0, Lcom/zendesk/android/R$string;->hyphen:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 12
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getStringFromApiValue(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "resources"
    .parameter "apiValue"

    .prologue
    .line 29
    invoke-static {p1}, Lcom/zendesk/api/model/account/TicketType;->get(Ljava/lang/String;)Lcom/zendesk/api/model/account/TicketType;

    move-result-object v0

    .line 30
    .local v0, status:Lcom/zendesk/api/model/account/TicketType;
    invoke-static {p0, v0}, Lcom/zendesk/api/model/strings/TicketTypeStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketType;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
