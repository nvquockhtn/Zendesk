.class public Lcom/zendesk/api/model/strings/TicketFieldEntryStrings;
.super Ljava/lang/Object;
.source "TicketFieldEntryStrings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/strings/TicketFieldEntryStrings$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method

.method public static getDisplayString(Landroid/content/res/Resources;Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/ticket/TicketFieldEntry;)Ljava/lang/String;
    .locals 1
    .parameter "resources"
    .parameter "baseModel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/zendesk/api/model/BaseModel;",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    if-eqz p2, :cond_0

    .line 22
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/zendesk/api/model/strings/TicketFieldEntryStrings;->getDisplayValue(Landroid/content/res/Resources;Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/ticket/TicketFieldEntry;Z)Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDisplayValue(Landroid/content/res/Resources;Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/ticket/TicketFieldEntry;Z)Ljava/lang/String;
    .locals 13
    .parameter "resources"
    .parameter "baseModel"
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/zendesk/api/model/BaseModel;",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 37
    .local v8, val:Ljava/lang/Object;
    :goto_0
    sget-object v9, Lcom/zendesk/api/model/strings/TicketFieldEntryStrings$1;->$SwitchMap$com$zendesk$api$model$account$TicketFieldType:[I

    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zendesk/api/model/account/TicketFieldType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 131
    check-cast v8, Ljava/lang/String;

    .line 134
    .end local v8           #val:Ljava/lang/Object;
    :goto_1
    return-object v8

    .line 36
    :cond_0
    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 41
    .restart local v8       #val:Ljava/lang/Object;
    :pswitch_0
    if-eqz v8, :cond_f

    .line 42
    check-cast v8, Ljava/lang/Long;

    .end local v8           #val:Ljava/lang/Object;
    invoke-static {p1, v8}, Lcom/zendesk/api/model/users/User;->getUser(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v9

    invoke-virtual {v9}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 47
    .restart local v8       #val:Ljava/lang/Object;
    :pswitch_1
    if-eqz v8, :cond_1

    .line 49
    invoke-interface {p1}, Lcom/zendesk/api/model/BaseModel;->getGroupCache()Lcom/zendesk/api/model/cache/GroupCache;

    move-result-object v9

    check-cast v8, Ljava/lang/Long;

    .end local v8           #val:Ljava/lang/Object;
    invoke-interface {v9, v8}, Lcom/zendesk/api/model/cache/GroupCache;->getGroup(Ljava/lang/Long;)Lcom/zendesk/api/model/users/Group;

    move-result-object v9

    invoke-virtual {v9}, Lcom/zendesk/api/model/users/Group;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 53
    .restart local v8       #val:Ljava/lang/Object;
    :cond_1
    :pswitch_2
    if-eqz v8, :cond_2

    .line 54
    check-cast v8, Ljava/lang/String;

    .end local v8           #val:Ljava/lang/Object;
    invoke-static {v8}, Lcom/zendesk/api/model/account/Priority;->get(Ljava/lang/String;)Lcom/zendesk/api/model/account/Priority;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/zendesk/api/model/strings/PriorityStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/Priority;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 56
    .restart local v8       #val:Ljava/lang/Object;
    :cond_2
    sget-object v9, Lcom/zendesk/api/model/account/Priority;->UNSET:Lcom/zendesk/api/model/account/Priority;

    invoke-static {p0, v9}, Lcom/zendesk/api/model/strings/PriorityStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/Priority;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 60
    :pswitch_3
    if-eqz v8, :cond_3

    .line 61
    check-cast v8, Ljava/lang/String;

    .end local v8           #val:Ljava/lang/Object;
    invoke-static {v8}, Lcom/zendesk/api/model/account/Status;->get(Ljava/lang/String;)Lcom/zendesk/api/model/account/Status;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/zendesk/api/model/strings/StatusStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/Status;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 63
    .restart local v8       #val:Ljava/lang/Object;
    :cond_3
    sget-object v9, Lcom/zendesk/api/model/account/Status;->NEW:Lcom/zendesk/api/model/account/Status;

    invoke-static {p0, v9}, Lcom/zendesk/api/model/strings/StatusStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/Status;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 68
    :pswitch_4
    if-eqz v8, :cond_4

    .line 69
    check-cast v8, Ljava/lang/String;

    .end local v8           #val:Ljava/lang/Object;
    invoke-static {v8}, Lcom/zendesk/api/model/account/TicketType;->get(Ljava/lang/String;)Lcom/zendesk/api/model/account/TicketType;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/zendesk/api/model/strings/TicketTypeStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketType;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 71
    .restart local v8       #val:Ljava/lang/Object;
    :cond_4
    sget-object v9, Lcom/zendesk/api/model/account/TicketType;->UNSET:Lcom/zendesk/api/model/account/TicketType;

    invoke-static {p0, v9}, Lcom/zendesk/api/model/strings/TicketTypeStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketType;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 75
    :pswitch_5
    if-eqz v8, :cond_5

    .line 76
    check-cast v8, Lcom/zendesk/api/model/shared/ZDDate;

    .end local v8           #val:Ljava/lang/Object;
    invoke-virtual {v8}, Lcom/zendesk/api/model/shared/ZDDate;->getDateString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 80
    .restart local v8       #val:Ljava/lang/Object;
    :cond_5
    :pswitch_6
    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v9

    check-cast v8, Ljava/lang/String;

    .end local v8           #val:Ljava/lang/Object;
    invoke-virtual {v9, v8}, Lcom/zendesk/api/model/account/TicketField;->getOptionDisplayValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 83
    .restart local v8       #val:Ljava/lang/Object;
    :pswitch_7
    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "true"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    sget v9, Lcom/zendesk/android/R$string;->yes_action:I

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_2
    move-object v8, v9

    goto/16 :goto_1

    :cond_7
    sget v9, Lcom/zendesk/android/R$string;->no_action:I

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 88
    :pswitch_8
    if-eqz v8, :cond_8

    .line 89
    check-cast v8, Ljava/lang/String;

    goto/16 :goto_1

    .line 91
    :cond_8
    const-string v8, ""

    goto/16 :goto_1

    .line 95
    :pswitch_9
    const-string v4, ""

    .local v4, temp:Ljava/lang/String;
    move-object v5, v8

    .line 96
    check-cast v5, Ljava/lang/Long;

    .line 97
    .local v5, ticketFormId:Ljava/lang/Long;
    invoke-interface {p1}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/zendesk/api/model/ticket/forms/TicketForms;->getTicketFormByTicketFormId(J)Lcom/zendesk/api/model/ticket/forms/TicketForm;

    move-result-object v0

    .line 98
    .local v0, form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    if-eqz v0, :cond_9

    .line 99
    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    :cond_9
    move-object v8, v4

    .line 101
    goto/16 :goto_1

    .line 105
    .end local v0           #form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    .end local v4           #temp:Ljava/lang/String;
    .end local v5           #ticketFormId:Ljava/lang/Long;
    :pswitch_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v3, s:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_b

    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v9

    :goto_3
    check-cast v9, Ljava/util/List;

    move-object v7, v9

    check-cast v7, Ljava/util/List;

    .line 107
    .local v7, users:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/users/User;>;"
    if-eqz v7, :cond_c

    .line 108
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zendesk/api/model/users/User;

    .line 109
    .local v6, u:Lcom/zendesk/api/model/users/User;
    invoke-virtual {v6}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 110
    invoke-virtual {v6}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 106
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #u:Lcom/zendesk/api/model/users/User;
    .end local v7           #users:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/users/User;>;"
    :cond_b
    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v9

    goto :goto_3

    .line 114
    .restart local v7       #users:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/users/User;>;"
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 117
    .end local v3           #s:Ljava/lang/StringBuilder;
    .end local v7           #users:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/users/User;>;"
    :pswitch_b
    sget v10, Lcom/zendesk/android/R$string;->ticket_incidents_description:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v9

    :goto_5
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v12

    invoke-virtual {p0, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v9

    goto :goto_5

    :pswitch_c
    move-object v2, v8

    .line 121
    check-cast v2, Ljava/lang/Long;

    .line 122
    .local v2, problemTicketId:Ljava/lang/Long;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_e

    .line 123
    sget v9, Lcom/zendesk/android/R$string;->ticket_linked_to_problem_description:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 125
    :cond_e
    sget v9, Lcom/zendesk/android/R$string;->link_ticket_to_problem:I

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 134
    .end local v2           #problemTicketId:Ljava/lang/Long;
    :cond_f
    const-string v8, ""

    goto/16 :goto_1

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .end packed-switch
.end method

.method public static getEditedValueDisplayString(Landroid/content/res/Resources;Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/ticket/TicketFieldEntry;)Ljava/lang/String;
    .locals 1
    .parameter "resources"
    .parameter "baseModel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/zendesk/api/model/BaseModel;",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    if-eqz p2, :cond_0

    .line 29
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/zendesk/api/model/strings/TicketFieldEntryStrings;->getDisplayValue(Landroid/content/res/Resources;Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/ticket/TicketFieldEntry;Z)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
