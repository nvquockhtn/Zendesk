.class public Lcom/zendesk/api/model/strings/PriorityStrings;
.super Ljava/lang/Object;
.source "PriorityStrings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/strings/PriorityStrings$1;
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

.method public static getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/Priority;)Ljava/lang/String;
    .locals 2
    .parameter "resources"
    .parameter "priority"

    .prologue
    .line 12
    sget-object v0, Lcom/zendesk/api/model/strings/PriorityStrings$1;->$SwitchMap$com$zendesk$api$model$account$Priority:[I

    invoke-virtual {p1}, Lcom/zendesk/api/model/account/Priority;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 24
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 14
    :pswitch_0
    sget v0, Lcom/zendesk/android/R$string;->hyphen:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :pswitch_1
    sget v0, Lcom/zendesk/android/R$string;->priority_low:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 18
    :pswitch_2
    sget v0, Lcom/zendesk/android/R$string;->priority_normal:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 20
    :pswitch_3
    sget v0, Lcom/zendesk/android/R$string;->priority_high:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 22
    :pswitch_4
    sget v0, Lcom/zendesk/android/R$string;->priority_urgent:I

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
