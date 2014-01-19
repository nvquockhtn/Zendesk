.class public final enum Lcom/zendesk/api/model/ticket/audits/AuditEventType;
.super Ljava/lang/Enum;
.source "AuditEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zendesk/api/model/ticket/audits/AuditEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum CCS:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum CHANGE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum COMMENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum CREATE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum ERROR:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum EXTERNAL:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum FACEBOOK_COMMENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum FACEBOOK_EVENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum LOG_ME_IN_TRANSCRIPTION_EVENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum NOTIFICATION:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum PRIVACY_CHANGE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum PUSH:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum SAT_RATING:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum SMS:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum TICKET_SHARE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum TWEET:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field public static final enum VOICE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

.field private static final logger:Lorg/slf4j/Logger;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zendesk/api/model/ticket/audits/AuditEventType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final apiVal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 20
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "COMMENT"

    const-string v4, "comment"

    invoke-direct {v2, v3, v6, v4}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->COMMENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 24
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "ERROR"

    const-string v4, "error"

    invoke-direct {v2, v3, v7, v4}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->ERROR:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 28
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "CREATE"

    const-string v4, "create"

    invoke-direct {v2, v3, v8, v4}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->CREATE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 32
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "NOTIFICATION"

    const-string v4, "notification"

    invoke-direct {v2, v3, v9, v4}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->NOTIFICATION:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 36
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "EXTERNAL"

    const-string v4, "external"

    invoke-direct {v2, v3, v10, v4}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->EXTERNAL:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 40
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "VOICE"

    const/4 v4, 0x5

    const-string v5, "voicecomment"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->VOICE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 44
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "FACEBOOK_EVENT"

    const/4 v4, 0x6

    const-string v5, "facebookevent"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->FACEBOOK_EVENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 48
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "FACEBOOK_COMMENT"

    const/4 v4, 0x7

    const-string v5, "facebookcomment"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->FACEBOOK_COMMENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 52
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "LOG_ME_IN_TRANSCRIPTION_EVENT"

    const/16 v4, 0x8

    const-string v5, "logmeintranscript"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->LOG_ME_IN_TRANSCRIPTION_EVENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 56
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "CCS"

    const/16 v4, 0x9

    const-string v5, "cc"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->CCS:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 60
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "CHANGE"

    const/16 v4, 0xa

    const-string v5, "change"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->CHANGE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 64
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "TWEET"

    const/16 v4, 0xb

    const-string v5, "tweet"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->TWEET:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 68
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "SAT_RATING"

    const/16 v4, 0xc

    const-string v5, "satisfactionrating"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->SAT_RATING:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 72
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "SMS"

    const/16 v4, 0xd

    const-string v5, "sms"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->SMS:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 76
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "TICKET_SHARE"

    const/16 v4, 0xe

    const-string v5, "ticketsharingevent"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->TICKET_SHARE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 80
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "PRIVACY_CHANGE"

    const/16 v4, 0xf

    const-string v5, "commentprivacychange"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->PRIVACY_CHANGE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 84
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    const-string v3, "PUSH"

    const/16 v4, 0x10

    const-string v5, "push"

    invoke-direct {v2, v3, v4, v5}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->PUSH:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 15
    const/16 v2, 0x11

    new-array v2, v2, [Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    sget-object v3, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->COMMENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->ERROR:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->CREATE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v3, v2, v8

    sget-object v3, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->NOTIFICATION:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v3, v2, v9

    sget-object v3, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->EXTERNAL:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v3, v2, v10

    const/4 v3, 0x5

    sget-object v4, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->VOICE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->FACEBOOK_EVENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->FACEBOOK_COMMENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->LOG_ME_IN_TRANSCRIPTION_EVENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->CCS:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->CHANGE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->TWEET:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->SAT_RATING:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->SMS:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->TICKET_SHARE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->PRIVACY_CHANGE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->PUSH:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    aput-object v4, v2, v3

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->$VALUES:[Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 86
    const-class v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->logger:Lorg/slf4j/Logger;

    .line 88
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->lookup:Ljava/util/Map;

    .line 91
    const-class v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 92
    .local v1, s:Lcom/zendesk/api/model/ticket/audits/AuditEventType;
    sget-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->lookup:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->getApiVal()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    .end local v1           #s:Lcom/zendesk/api/model/ticket/audits/AuditEventType;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "apiVal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput-object p3, p0, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->apiVal:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/zendesk/api/model/ticket/audits/AuditEventType;
    .locals 4
    .parameter "apiVal"

    .prologue
    .line 118
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :cond_1
    sget-object v1, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->lookup:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 120
    .local v0, a:Lcom/zendesk/api/model/ticket/audits/AuditEventType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognised event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zendesk/api/model/ticket/audits/AuditEventType;
    .locals 1
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    return-object v0
.end method

.method public static values()[Lcom/zendesk/api/model/ticket/audits/AuditEventType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->$VALUES:[Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    invoke-virtual {v0}, [Lcom/zendesk/api/model/ticket/audits/AuditEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    return-object v0
.end method


# virtual methods
.method public getApiVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->apiVal:Ljava/lang/String;

    return-object v0
.end method
