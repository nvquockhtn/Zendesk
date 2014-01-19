.class public Lcom/zendesk/api/model/strings/SatisfactionScoreStrings;
.super Ljava/lang/Object;
.source "SatisfactionScoreStrings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/strings/SatisfactionScoreStrings$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/ticket/SatisfactionScore;)Ljava/lang/String;
    .locals 2
    .parameter "resources"
    .parameter "score"

    .prologue
    .line 12
    sget-object v0, Lcom/zendesk/api/model/strings/SatisfactionScoreStrings$1;->$SwitchMap$com$zendesk$api$model$ticket$SatisfactionScore:[I

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/SatisfactionScore;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 26
    const-string v0, ""

    :goto_0
    return-object v0

    .line 14
    :pswitch_0
    sget v0, Lcom/zendesk/android/R$string;->cs_good:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 17
    :pswitch_1
    sget v0, Lcom/zendesk/android/R$string;->cs_bad:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 20
    :pswitch_2
    sget v0, Lcom/zendesk/android/R$string;->cs_offered:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_3
    sget v0, Lcom/zendesk/android/R$string;->cs_unoffered:I

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
    .end packed-switch
.end method

.method public static getStringFromApiValue(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "resources"
    .parameter "apiValue"

    .prologue
    .line 32
    invoke-static {p1}, Lcom/zendesk/api/model/ticket/SatisfactionScore;->get(Ljava/lang/String;)Lcom/zendesk/api/model/ticket/SatisfactionScore;

    move-result-object v0

    .line 33
    .local v0, score:Lcom/zendesk/api/model/ticket/SatisfactionScore;
    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0, v0}, Lcom/zendesk/api/model/strings/SatisfactionScoreStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/ticket/SatisfactionScore;)Ljava/lang/String;

    move-result-object v1

    .line 36
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
