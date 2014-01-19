.class public Lcom/zendesk/android/ticket/TicketPropertiesFragment;
.super Landroid/support/v4/app/Fragment;
.source "TicketPropertiesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/ticket/TicketPropertiesFragment$3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TicketPropertiesFragment"

.field private static final ticketFieldOrder:[Lcom/zendesk/api/model/account/TicketFieldType;


# instance fields
.field private currentUser:Lcom/zendesk/api/model/users/User;

.field private inflater:Landroid/view/LayoutInflater;

.field private loadingFrame:Landroid/widget/RelativeLayout;

.field private requested:Landroid/widget/TextView;

.field private requester:Landroid/widget/TextView;

.field private requesterRow:Landroid/widget/RelativeLayout;

.field private scrollView:Landroid/widget/LinearLayout;

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;

.field private via:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/zendesk/api/model/account/TicketFieldType;

    const/4 v1, 0x0

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->REQUESTER:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->GROUP:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->ASSIGNEE:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->CC:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETFORM:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->STATUS:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TYPE:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETINCIDENTS:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETPROBLEM:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->PRIORITY:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->SUBJECT:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TAG:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticketFieldOrder:[Lcom/zendesk/api/model/account/TicketFieldType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 293
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticket/TicketPropertiesFragment;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/android/ticket/TicketPropertiesFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->requester:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zendesk/android/ticket/TicketPropertiesFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->setRequesterText()V

    return-void
.end method

.method static synthetic access$300(Lcom/zendesk/android/ticket/TicketPropertiesFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->via:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zendesk/android/ticket/TicketPropertiesFragment;Lcom/zendesk/api/model/users/User;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->setViaText(Lcom/zendesk/api/model/users/User;)V

    return-void
.end method

.method private applyStatusStyling(Landroid/widget/TextView;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getStatusField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/zendesk/api/model/account/Status;->get(Ljava/lang/String;)Lcom/zendesk/api/model/account/Status;

    move-result-object v0

    .line 275
    .local v0, status:Lcom/zendesk/api/model/account/Status;
    sget-object v1, Lcom/zendesk/android/ticket/TicketPropertiesFragment$3;->$SwitchMap$com$zendesk$api$model$account$Status:[I

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 295
    :goto_0
    sget v1, Lcom/zendesk/android/Colors;->WHITE:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    return-void

    .line 277
    :pswitch_0
    sget v1, Lcom/zendesk/android/R$drawable;->status_new:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 280
    :pswitch_1
    sget v1, Lcom/zendesk/android/R$drawable;->status_open:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 283
    :pswitch_2
    sget v1, Lcom/zendesk/android/R$drawable;->status_pending:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 286
    :pswitch_3
    sget v1, Lcom/zendesk/android/R$drawable;->status_on_hold:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 289
    :pswitch_4
    sget v1, Lcom/zendesk/android/R$drawable;->status_solved:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 292
    :pswitch_5
    sget v1, Lcom/zendesk/android/R$drawable;->status_closed:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private companionFields(Ljava/util/List;Lcom/zendesk/api/model/account/TicketType;Lcom/zendesk/api/model/account/TicketFieldType;)V
    .locals 10
    .parameter
    .parameter "parent"
    .parameter "companion"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;>;",
            "Lcom/zendesk/api/model/account/TicketType;",
            "Lcom/zendesk/api/model/account/TicketFieldType;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, fields:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;>;"
    const/4 v9, -0x1

    .line 183
    iget-object v7, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 184
    iget-object v7, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 185
    .local v6, ticketTypeApiValue:Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 186
    const/4 v5, -0x1

    .local v5, taskPostition:I
    const/4 v2, -0x1

    .line 187
    .local v2, dueDatePosition:I
    const/4 v1, 0x0

    .line 188
    .local v1, dueDateField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 190
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 192
    .local v3, field:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v7

    sget-object v8, Lcom/zendesk/api/model/account/TicketFieldType;->TYPE:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-virtual {v7, v8}, Lcom/zendesk/api/model/account/TicketFieldType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 194
    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v7

    :goto_2
    check-cast v7, Ljava/lang/String;

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    .line 195
    .local v0, apiValue:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 196
    move v5, v4

    .line 199
    .end local v0           #apiValue:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/zendesk/api/model/account/TicketFieldType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 200
    move v2, v4

    .line 201
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #dueDateField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    check-cast v1, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 204
    .restart local v1       #dueDateField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    :cond_1
    if-le v5, v9, :cond_6

    if-le v2, v9, :cond_6

    .line 209
    .end local v3           #field:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    :cond_2
    if-eq v5, v9, :cond_3

    add-int/lit8 v7, v5, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    if-eqz v1, :cond_3

    .line 210
    add-int/lit8 v7, v5, 0x1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 214
    .end local v1           #dueDateField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    .end local v2           #dueDatePosition:I
    .end local v4           #i:I
    .end local v5           #taskPostition:I
    .end local v6           #ticketTypeApiValue:Ljava/lang/String;
    :cond_3
    return-void

    .line 184
    :cond_4
    iget-object v7, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    goto :goto_0

    .line 194
    .restart local v1       #dueDateField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    .restart local v2       #dueDatePosition:I
    .restart local v3       #field:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    .restart local v4       #i:I
    .restart local v5       #taskPostition:I
    .restart local v6       #ticketTypeApiValue:Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 188
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private loadUser(Lcom/zendesk/api/model/users/User;)V
    .locals 1
    .parameter "u"

    .prologue
    .line 518
    new-instance v0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;-><init>(Lcom/zendesk/android/ticket/TicketPropertiesFragment;Lcom/zendesk/api/model/users/User;)V

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/users/User;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 552
    return-void
.end method

.method private orderList(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, fields:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    .local v3, tempFieldsList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v5, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticketFieldOrder:[Lcom/zendesk/api/model/account/TicketFieldType;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 144
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 145
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 146
    .local v0, field:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v5

    sget-object v6, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticketFieldOrder:[Lcom/zendesk/api/model/account/TicketFieldType;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/zendesk/api/model/account/TicketFieldType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 149
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 150
    invoke-interface {v3, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 154
    :goto_2
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 144
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 143
    .end local v0           #field:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v2           #j:I
    :cond_3
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    iget-object v5, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 163
    iget-object v5, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 164
    .local v4, ticketTypeApiValue:Ljava/lang/String;
    :goto_3
    if-eqz v4, :cond_4

    sget-object v5, Lcom/zendesk/api/model/account/TicketType;->TASK:Lcom/zendesk/api/model/account/TicketType;

    invoke-virtual {v5}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    sget-object v5, Lcom/zendesk/api/model/account/TicketType;->TASK:Lcom/zendesk/api/model/account/TicketType;

    sget-object v6, Lcom/zendesk/api/model/account/TicketFieldType;->DUEDATE:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-direct {p0, v3, v5, v6}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->companionFields(Ljava/util/List;Lcom/zendesk/api/model/account/TicketType;Lcom/zendesk/api/model/account/TicketFieldType;)V

    .line 167
    :cond_4
    if-eqz v4, :cond_5

    sget-object v5, Lcom/zendesk/api/model/account/TicketType;->INCIDENT:Lcom/zendesk/api/model/account/TicketType;

    invoke-virtual {v5}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 168
    sget-object v5, Lcom/zendesk/api/model/account/TicketType;->INCIDENT:Lcom/zendesk/api/model/account/TicketType;

    sget-object v6, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETPROBLEM:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-direct {p0, v3, v5, v6}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->companionFields(Ljava/util/List;Lcom/zendesk/api/model/account/TicketType;Lcom/zendesk/api/model/account/TicketFieldType;)V

    .line 170
    :cond_5
    if-eqz v4, :cond_6

    sget-object v5, Lcom/zendesk/api/model/account/TicketType;->PROBLEM:Lcom/zendesk/api/model/account/TicketType;

    invoke-virtual {v5}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 171
    sget-object v5, Lcom/zendesk/api/model/account/TicketType;->PROBLEM:Lcom/zendesk/api/model/account/TicketType;

    sget-object v6, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETINCIDENTS:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-direct {p0, v3, v5, v6}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->companionFields(Ljava/util/List;Lcom/zendesk/api/model/account/TicketType;Lcom/zendesk/api/model/account/TicketFieldType;)V

    .line 175
    .end local v4           #ticketTypeApiValue:Ljava/lang/String;
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 176
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 178
    const/4 v3, 0x0

    .line 180
    return-void

    .line 163
    :cond_7
    iget-object v5, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    goto :goto_3
.end method

.method private setRequestedText()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->requested:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/zendesk/android/R$string;->ticket_properties_requested_on:I

    invoke-virtual {p0, v2}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/shared/ZDDate;->getDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    return-void
.end method

.method private setRequesterRow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 325
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getRequesterField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 326
    .local v2, userId:Ljava/lang/Long;
    const/4 v1, 0x0

    .line 327
    .local v1, u:Lcom/zendesk/api/model/users/User;
    if-eqz v2, :cond_0

    .line 328
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/ZendeskModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v1

    .line 331
    :cond_0
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->inflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/zendesk/android/R$layout;->ticket_requester_row:I

    iget-object v5, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->scrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->requesterRow:Landroid/widget/RelativeLayout;

    .line 332
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->requesterRow:Landroid/widget/RelativeLayout;

    sget v4, Lcom/zendesk/android/R$id;->ticket_requested_details:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->requested:Landroid/widget/TextView;

    .line 333
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->requesterRow:Landroid/widget/RelativeLayout;

    sget v4, Lcom/zendesk/android/R$id;->ticket_requester_details:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->requester:Landroid/widget/TextView;

    .line 334
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->requesterRow:Landroid/widget/RelativeLayout;

    sget v4, Lcom/zendesk/android/R$id;->ticket_via_details:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->via:Landroid/widget/TextView;

    .line 335
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->requester:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 337
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->setRequestedText()V

    .line 339
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getRequester()Lcom/zendesk/api/model/users/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/users/User;->fullyLoaded()Z

    move-result v3

    if-nez v3, :cond_3

    .line 340
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getRequester()Lcom/zendesk/api/model/users/User;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->loadUser(Lcom/zendesk/api/model/users/User;)V

    .line 341
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->requester:Landroid/widget/TextView;

    sget v4, Lcom/zendesk/android/R$string;->ticket_properties_requester_not_set:I

    invoke-virtual {p0, v4}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :goto_0
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getSubmitterId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getRequester()Lcom/zendesk/api/model/users/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getSubmitterId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 347
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->via:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/ZendeskModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v3

    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getSubmitterId()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v0

    .line 349
    .local v0, submitter:Lcom/zendesk/api/model/users/User;
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->via:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 350
    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 351
    invoke-direct {p0, v0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->setViaText(Lcom/zendesk/api/model/users/User;)V

    .line 357
    .end local v0           #submitter:Lcom/zendesk/api/model/users/User;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->requesterRow:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/zendesk/android/ticket/TicketPropertiesFragment$1;

    invoke-direct {v4, p0, v2}, Lcom/zendesk/android/ticket/TicketPropertiesFragment$1;-><init>(Lcom/zendesk/android/ticket/TicketPropertiesFragment;Ljava/lang/Long;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->scrollView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->requesterRow:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 372
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->fullyLoaded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 373
    invoke-direct {p0, v1}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->loadUser(Lcom/zendesk/api/model/users/User;)V

    .line 375
    :cond_2
    return-void

    .line 343
    :cond_3
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->setRequesterText()V

    goto :goto_0

    .line 353
    .restart local v0       #submitter:Lcom/zendesk/api/model/users/User;
    :cond_4
    invoke-direct {p0, v0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->loadUser(Lcom/zendesk/api/model/users/User;)V

    goto :goto_1
.end method

.method private setRequesterText()V
    .locals 6

    .prologue
    .line 390
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getRequesterField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 391
    .local v2, userId:Ljava/lang/Long;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/ZendeskModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v1

    .line 393
    .local v1, u:Lcom/zendesk/api/model/users/User;
    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 396
    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getEmail()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 397
    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->requester:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 404
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->requester:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/zendesk/android/R$string;->ticket_properties_requested_by:I

    invoke-virtual {p0, v5}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :cond_1
    return-void

    .line 400
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private setViaText(Lcom/zendesk/api/model/users/User;)V
    .locals 4
    .parameter "u"

    .prologue
    .line 414
    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 418
    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->via:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/zendesk/android/R$string;->ticket_properties_via:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    return-void

    .line 421
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private setupFields()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 218
    iget-object v9, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v9}, Lcom/zendesk/api/model/ticket/Ticket;->getAllTicketFieldEntries()Ljava/util/List;

    move-result-object v0

    .line 219
    .local v0, fields:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;>;"
    invoke-direct {p0, v0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->orderList(Ljava/util/List;)V

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 222
    .local v4, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    invoke-direct {p0, v4}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->shouldIgnore(Lcom/zendesk/api/model/ticket/TicketFieldEntry;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 226
    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    .line 228
    .local v3, tf:Lcom/zendesk/api/model/account/TicketField;
    iget-object v9, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->inflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/zendesk/android/R$layout;->ticket_property_row:I

    iget-object v11, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->scrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 230
    .local v2, row:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 233
    sget v9, Lcom/zendesk/android/R$id;->ticket_property_field_title:I

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 234
    .local v5, title:Landroid/widget/TextView;
    sget v9, Lcom/zendesk/android/R$id;->ticket_property_field_value:I

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 235
    .local v8, value:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/zendesk/api/model/strings/TicketFieldStrings;->setTicketFieldTitle(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketField;)V

    .line 236
    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, titleString:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->isRequired()Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->isRequired()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 238
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 241
    :cond_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v10

    invoke-static {v9, v10, v4}, Lcom/zendesk/api/model/strings/TicketFieldEntryStrings;->getEditedValueDisplayString(Landroid/content/res/Resources;Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/ticket/TicketFieldEntry;)Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, val:Ljava/lang/String;
    if-eqz v7, :cond_2

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const-string v7, "-"

    .line 244
    :cond_3
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 247
    sget v9, Lcom/zendesk/android/Colors;->ZENDESK_GREEN:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    :goto_1
    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v9

    sget-object v10, Lcom/zendesk/api/model/account/TicketFieldType;->STATUS:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v9, v10, :cond_4

    .line 253
    invoke-direct {p0, v8}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->applyStatusStyling(Landroid/widget/TextView;)V

    .line 256
    :cond_4
    iget-object v9, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v9}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/zendesk/api/model/ticket/TicketPermissions;->canUpdateTicket()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_5

    .line 257
    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v9

    sget-object v10, Lcom/zendesk/api/model/account/TicketFieldType;->TAG:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v9, v10, :cond_5

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v9

    sget-object v10, Lcom/zendesk/api/model/account/TicketFieldType;->CC:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v9, v10, :cond_5

    .line 258
    invoke-virtual {v2, v12}, Landroid/view/View;->setClickable(Z)V

    .line 262
    :cond_5
    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v9

    sget-object v10, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETINCIDENTS:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v9}, Lcom/zendesk/api/model/ticket/Ticket;->getIncidentTickets()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v9}, Lcom/zendesk/api/model/ticket/Ticket;->getIncidentTickets()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_6

    .line 264
    invoke-virtual {v2, v12}, Landroid/view/View;->setClickable(Z)V

    .line 267
    :cond_6
    iget-object v9, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->scrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 249
    :cond_7
    sget v9, Lcom/zendesk/android/Colors;->DARK_TEXT:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 269
    .end local v2           #row:Landroid/view/View;
    .end local v3           #tf:Lcom/zendesk/api/model/account/TicketField;
    .end local v4           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    .end local v5           #title:Landroid/widget/TextView;
    .end local v6           #titleString:Ljava/lang/String;
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #value:Landroid/widget/TextView;
    :cond_8
    return-void
.end method

.method private shouldIgnore(Lcom/zendesk/api/model/ticket/TicketFieldEntry;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    const/4 v3, 0x1

    .line 300
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    .line 320
    :goto_0
    return v2

    .line 302
    :cond_0
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v0

    .line 303
    .local v0, tft:Lcom/zendesk/api/model/account/TicketFieldType;
    const/4 v1, 0x0

    .line 304
    .local v1, ticketAPIValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 307
    :cond_1
    :goto_1
    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->REQUESTER:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->DESCRIPTION:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v0, v2, :cond_4

    :cond_2
    move v2, v3

    .line 308
    goto :goto_0

    .line 305
    :cond_3
    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_1

    .line 311
    :cond_4
    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->DUEDATE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v0, v2, :cond_5

    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->TASK:Lcom/zendesk/api/model/account/TicketType;

    invoke-virtual {v2}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    .line 312
    goto :goto_0

    .line 314
    :cond_5
    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETPROBLEM:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v0, v2, :cond_6

    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->INCIDENT:Lcom/zendesk/api/model/account/TicketType;

    invoke-virtual {v2}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v3

    .line 315
    goto :goto_0

    .line 317
    :cond_6
    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETINCIDENTS:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v0, v2, :cond_7

    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->PROBLEM:Lcom/zendesk/api/model/account/TicketType;

    invoke-virtual {v2}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v3

    .line 318
    goto :goto_0

    .line 320
    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V
    .locals 3
    .parameter "tf"
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 491
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 492
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ticketId"

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 493
    const-string v1, "ticketFieldId"

    invoke-virtual {p1}, Lcom/zendesk/api/model/account/TicketField;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 494
    invoke-virtual {p0, v0, p3}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 495
    return-void
.end method


# virtual methods
.method public hideLoading()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->loadingFrame:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 560
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 564
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 565
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 499
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 501
    packed-switch p2, :pswitch_data_0

    .line 515
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 503
    :pswitch_1
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->reload()V

    goto :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const-wide/16 v5, 0x0

    const/16 v4, 0x7d6

    .line 438
    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getStatus()Lcom/zendesk/api/model/account/Status;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/Status;->CLOSED:Lcom/zendesk/api/model/account/Status;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/account/TicketField;

    .line 442
    .local v1, tf:Lcom/zendesk/api/model/account/TicketField;
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->TAGGER:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v2, v3, :cond_2

    .line 443
    const-class v2, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;

    const/16 v3, 0x7d4

    invoke-direct {p0, v1, v2, v3}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->TEXT:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->REGEX:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->INTEGER:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->DECIMAL:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v2, v3, :cond_4

    .line 446
    :cond_3
    const-class v2, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;

    const/16 v3, 0x7d5

    invoke-direct {p0, v1, v2, v3}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto :goto_0

    .line 447
    :cond_4
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->TEXTAREA:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v2, v3, :cond_5

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->SUBJECT:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v2, v3, :cond_6

    .line 448
    :cond_5
    const-class v2, Lcom/zendesk/android/ticket/editors/EditMultiLineActivity;

    const/16 v3, 0x7da

    invoke-direct {p0, v1, v2, v3}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto :goto_0

    .line 449
    :cond_6
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->STATUS:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v2, v3, :cond_7

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->TYPE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v2, v3, :cond_7

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->PRIORITY:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v2, v3, :cond_7

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->GROUP:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v2, v3, :cond_8

    .line 451
    :cond_7
    const-class v2, Lcom/zendesk/android/ticket/editors/EditListActivity;

    invoke-direct {p0, v1, v2, v4}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto :goto_0

    .line 452
    :cond_8
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->CHECKBOX:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v2, v3, :cond_9

    .line 453
    const-class v2, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;

    invoke-direct {p0, v1, v2, v4}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 454
    :cond_9
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->DUEDATE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v2, v3, :cond_a

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->DATE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v2, v3, :cond_b

    .line 455
    :cond_a
    const-class v2, Lcom/zendesk/android/ticket/editors/EditDateActivity;

    const/16 v3, 0x7db

    invoke-direct {p0, v1, v2, v3}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 456
    :cond_b
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->CC:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v2, v3, :cond_c

    .line 457
    const-class v2, Lcom/zendesk/android/ticket/editors/EditCCsActivity;

    const/16 v3, 0x7dc

    invoke-direct {p0, v1, v2, v3}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 458
    :cond_c
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->TAG:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v2, v3, :cond_d

    .line 459
    const-class v2, Lcom/zendesk/android/ticket/editors/EditTagsActivity;

    const/16 v3, 0x7dd

    invoke-direct {p0, v1, v2, v3}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 460
    :cond_d
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->REQUESTER:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v2, v3, :cond_e

    .line 461
    const-class v2, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;

    const/16 v3, 0x7de

    invoke-direct {p0, v1, v2, v3}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 462
    :cond_e
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->ASSIGNEE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v2, v3, :cond_10

    .line 463
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->ASSIGNEE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v2, v3, :cond_f

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    .line 465
    :cond_f
    const-class v2, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;

    invoke-direct {p0, v1, v2, v4}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 467
    :cond_10
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETFORM:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v2, v3, :cond_11

    .line 468
    const-class v2, Lcom/zendesk/android/ticket/editors/EditListActivity;

    invoke-direct {p0, v1, v2, v4}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 469
    :cond_11
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETINCIDENTS:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v2, v3, :cond_12

    .line 470
    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v2, :cond_0

    .line 471
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 472
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ticketId"

    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 473
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 475
    .end local v0           #intent:Landroid/content/Intent;
    :cond_12
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETPROBLEM:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v2, v3, :cond_0

    .line 476
    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_13

    .line 477
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 478
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "ticketId"

    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 479
    const-string v2, "problemTicketId"

    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 480
    const/16 v2, 0x7e6

    invoke-virtual {p0, v0, v2}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 481
    .end local v0           #intent:Landroid/content/Intent;
    :cond_13
    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v2, :cond_0

    .line 482
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "ticketId"

    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 484
    const/16 v2, 0x7e7

    invoke-virtual {p0, v0, v2}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->inflater:Landroid/view/LayoutInflater;

    .line 91
    sget v2, Lcom/zendesk/android/R$layout;->fragment_ticket_properties:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, v:Landroid/view/View;
    sget v2, Lcom/zendesk/android/R$id;->ticket_properties_fragment:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 94
    .local v0, propertiesFragment:Landroid/widget/RelativeLayout;
    sget v2, Lcom/zendesk/android/R$id;->ticket_properties_scrollviewcontent:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->scrollView:Landroid/widget/LinearLayout;

    .line 96
    sget v2, Lcom/zendesk/android/R$id;->loading_frame:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->loadingFrame:Landroid/widget/RelativeLayout;

    .line 98
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 122
    invoke-static {}, Lcom/zendesk/android/ticket/BusProvider;->getInstance()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 104
    invoke-static {}, Lcom/zendesk/android/ticket/BusProvider;->getInstance()Lcom/squareup/otto/Bus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zendesk/android/ticket/TicketActivity;

    .line 107
    .local v0, ta:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 109
    .end local v0           #ta:Lcom/zendesk/android/ticket/TicketActivity;
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v1, :cond_1

    .line 110
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/ZendeskModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->currentUser:Lcom/zendesk/api/model/users/User;

    .line 111
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->getComments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->getComments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->reload()V

    .line 117
    :cond_1
    return-void
.end method

.method public onTicketLoadedEvent(Lcom/zendesk/android/ticket/events/TicketLoadedEvent;)V
    .locals 2
    .parameter "event"
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 569
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->currentUser:Lcom/zendesk/api/model/users/User;

    .line 570
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v0

    iget-object v1, p1, Lcom/zendesk/android/ticket/events/TicketLoadedEvent;->ticketId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 571
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->reload()V

    .line 573
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->scrollView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->scrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 130
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->setRequesterRow()V

    .line 131
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->setupFields()V

    .line 134
    :cond_0
    return-void
.end method

.method public shouldRefresh()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->currentUser:Lcom/zendesk/api/model/users/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 556
    return-void
.end method
