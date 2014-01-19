.class Lcom/zendesk/api/model/account/TicketFields$TicketFieldOrderComparator;
.super Ljava/lang/Object;
.source "TicketFields.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/account/TicketFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TicketFieldOrderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/zendesk/api/model/account/TicketField;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/account/TicketFields;


# direct methods
.method private constructor <init>(Lcom/zendesk/api/model/account/TicketFields;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/zendesk/api/model/account/TicketFields$TicketFieldOrderComparator;->this$0:Lcom/zendesk/api/model/account/TicketFields;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zendesk/api/model/account/TicketFields;Lcom/zendesk/api/model/account/TicketFields$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/zendesk/api/model/account/TicketFields$TicketFieldOrderComparator;-><init>(Lcom/zendesk/api/model/account/TicketFields;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zendesk/api/model/account/TicketField;Lcom/zendesk/api/model/account/TicketField;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 311
    if-nez p1, :cond_1

    .line 312
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 323
    :goto_0
    return v0

    .line 313
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 315
    :cond_1
    if-nez p2, :cond_2

    .line 316
    const/4 v0, 0x1

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {p1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketFieldType;->isSystemField()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    :cond_3
    invoke-virtual {p1}, Lcom/zendesk/api/model/account/TicketField;->getPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zendesk/api/model/account/TicketField;->getPosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 306
    check-cast p1, Lcom/zendesk/api/model/account/TicketField;

    .end local p1
    check-cast p2, Lcom/zendesk/api/model/account/TicketField;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zendesk/api/model/account/TicketFields$TicketFieldOrderComparator;->compare(Lcom/zendesk/api/model/account/TicketField;Lcom/zendesk/api/model/account/TicketField;)I

    move-result v0

    return v0
.end method
