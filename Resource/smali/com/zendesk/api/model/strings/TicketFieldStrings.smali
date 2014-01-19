.class public Lcom/zendesk/api/model/strings/TicketFieldStrings;
.super Ljava/lang/Object;
.source "TicketFieldStrings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/strings/TicketFieldStrings$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static setTicketFieldTitle(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketField;)V
    .locals 2
    .parameter "resources"
    .parameter "tf"

    .prologue
    .line 12
    sget-object v0, Lcom/zendesk/api/model/strings/TicketFieldStrings$1;->$SwitchMap$com$zendesk$api$model$account$TicketFieldType:[I

    invoke-virtual {p1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 14
    :pswitch_0
    sget v0, Lcom/zendesk/android/R$string;->metadata_tags:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/account/TicketField;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :pswitch_1
    sget v0, Lcom/zendesk/android/R$string;->metadata_due_date:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/account/TicketField;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :pswitch_2
    sget v0, Lcom/zendesk/android/R$string;->metadata_ccs:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/account/TicketField;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :pswitch_3
    sget v0, Lcom/zendesk/android/R$string;->metadata_description:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/account/TicketField;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :pswitch_4
    sget v0, Lcom/zendesk/android/R$string;->metadata_requester:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/account/TicketField;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :pswitch_5
    sget v0, Lcom/zendesk/android/R$string;->metadata_subject:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/account/TicketField;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :pswitch_6
    sget v0, Lcom/zendesk/android/R$string;->metadata_assignee:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/account/TicketField;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :pswitch_7
    sget v0, Lcom/zendesk/android/R$string;->metadata_ticket_type:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/account/TicketField;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :pswitch_8
    sget v0, Lcom/zendesk/android/R$string;->metadata_ticket_priority:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/account/TicketField;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_9
    sget v0, Lcom/zendesk/android/R$string;->metadata_ticket_form:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/account/TicketField;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :pswitch_a
    sget v0, Lcom/zendesk/android/R$string;->metadata_ticket_incidents:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/account/TicketField;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_b
    sget v0, Lcom/zendesk/android/R$string;->metadata_ticket_problem:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/account/TicketField;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_c
    sget v0, Lcom/zendesk/android/R$string;->metadata_ticket_status:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/account/TicketField;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :pswitch_d
    sget v0, Lcom/zendesk/android/R$string;->metadata_ticket_group:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/account/TicketField;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 12
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
