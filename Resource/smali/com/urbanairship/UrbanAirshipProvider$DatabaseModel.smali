.class Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/UrbanAirshipProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseModel"
.end annotation


# instance fields
.field contentUri:Landroid/net/Uri;

.field dataManager:Lcom/urbanairship/util/DataManager;

.field intentAction:Ljava/lang/String;

.field notificationColumnId:Ljava/lang/String;

.field table:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/urbanairship/util/DataManager;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->dataManager:Lcom/urbanairship/util/DataManager;

    iput-object p2, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->table:Ljava/lang/String;

    iput-object p3, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->contentUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->notificationColumnId:Ljava/lang/String;

    iput-object p5, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->intentAction:Ljava/lang/String;

    return-void
.end method

.method static createPreferencesModel(Landroid/content/Context;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;
    .locals 6

    new-instance v1, Lcom/urbanairship/PreferencesDataManager;

    invoke-direct {v1, p0}, Lcom/urbanairship/PreferencesDataManager;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    const-string v2, "preferences"

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getPreferencesContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;-><init>(Lcom/urbanairship/util/DataManager;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static createRichPushModel(Landroid/content/Context;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;
    .locals 6

    new-instance v1, Lcom/urbanairship/RichPushDataManager;

    invoke-direct {v1, p0}, Lcom/urbanairship/RichPushDataManager;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    const-string v2, "richpush"

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getRichPushContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "message_id"

    const-string v5, "com.urbanairship.richpush.DB_CHANGE"

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;-><init>(Lcom/urbanairship/util/DataManager;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method notifyDatabaseChange(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->contentUri:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "|"

    invoke-static {v2, v3}, Lcom/urbanairship/util/UAStringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying of change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->intentAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->intentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.urbanairship.DB_CHANGE_ACTION"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.urbanairship.DB_CHANGE_KEYS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
