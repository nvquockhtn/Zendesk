.class Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/richpush/RichPushInbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SentAtRichPushMessageComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/urbanairship/richpush/RichPushMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/urbanairship/richpush/RichPushMessage;Lcom/urbanairship/richpush/RichPushMessage;)I
    .locals 2

    invoke-virtual {p2}, Lcom/urbanairship/richpush/RichPushMessage;->getSentDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->getSentDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/urbanairship/richpush/RichPushMessage;

    check-cast p2, Lcom/urbanairship/richpush/RichPushMessage;

    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;->compare(Lcom/urbanairship/richpush/RichPushMessage;Lcom/urbanairship/richpush/RichPushMessage;)I

    move-result v0

    return v0
.end method
