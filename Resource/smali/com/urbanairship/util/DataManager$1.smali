.class Lcom/urbanairship/util/DataManager$1;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/util/DataManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/util/DataManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/util/DataManager;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/util/DataManager$1;->this$0:Lcom/urbanairship/util/DataManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/util/DataManager$1;->this$0:Lcom/urbanairship/util/DataManager;

    invoke-virtual {v0, p1}, Lcom/urbanairship/util/DataManager;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/util/DataManager$1;->this$0:Lcom/urbanairship/util/DataManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/urbanairship/util/DataManager;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
