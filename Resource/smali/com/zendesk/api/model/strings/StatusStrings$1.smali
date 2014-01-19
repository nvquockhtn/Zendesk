.class synthetic Lcom/zendesk/api/model/strings/StatusStrings$1;
.super Ljava/lang/Object;
.source "StatusStrings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/strings/StatusStrings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$zendesk$api$model$account$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    invoke-static {}, Lcom/zendesk/api/model/account/Status;->values()[Lcom/zendesk/api/model/account/Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zendesk/api/model/strings/StatusStrings$1;->$SwitchMap$com$zendesk$api$model$account$Status:[I

    :try_start_0
    sget-object v0, Lcom/zendesk/api/model/strings/StatusStrings$1;->$SwitchMap$com$zendesk$api$model$account$Status:[I

    sget-object v1, Lcom/zendesk/api/model/account/Status;->NEW:Lcom/zendesk/api/model/account/Status;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/zendesk/api/model/strings/StatusStrings$1;->$SwitchMap$com$zendesk$api$model$account$Status:[I

    sget-object v1, Lcom/zendesk/api/model/account/Status;->OPEN:Lcom/zendesk/api/model/account/Status;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/zendesk/api/model/strings/StatusStrings$1;->$SwitchMap$com$zendesk$api$model$account$Status:[I

    sget-object v1, Lcom/zendesk/api/model/account/Status;->ON_HOLD:Lcom/zendesk/api/model/account/Status;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/zendesk/api/model/strings/StatusStrings$1;->$SwitchMap$com$zendesk$api$model$account$Status:[I

    sget-object v1, Lcom/zendesk/api/model/account/Status;->PENDING:Lcom/zendesk/api/model/account/Status;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/zendesk/api/model/strings/StatusStrings$1;->$SwitchMap$com$zendesk$api$model$account$Status:[I

    sget-object v1, Lcom/zendesk/api/model/account/Status;->SOLVED:Lcom/zendesk/api/model/account/Status;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/zendesk/api/model/strings/StatusStrings$1;->$SwitchMap$com$zendesk$api$model$account$Status:[I

    sget-object v1, Lcom/zendesk/api/model/account/Status;->CLOSED:Lcom/zendesk/api/model/account/Status;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
