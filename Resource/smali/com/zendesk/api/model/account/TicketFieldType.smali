.class public final enum Lcom/zendesk/api/model/account/TicketFieldType;
.super Ljava/lang/Enum;
.source "TicketFieldType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zendesk/api/model/account/TicketFieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum ASSIGNEE:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum CC:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum CHECKBOX:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum COMMENT:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum DATE:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum DECIMAL:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum DESCRIPTION:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum DUEDATE:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum GROUP:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum INTEGER:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum PRIORITY:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum REGEX:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum REQUESTER:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum STATUS:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum SUBJECT:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum TAG:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum TAGGER:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum TEXT:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum TEXTAREA:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum TICKETFORM:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum TICKETINCIDENTS:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum TICKETPROBLEM:Lcom/zendesk/api/model/account/TicketFieldType;

.field public static final enum TYPE:Lcom/zendesk/api/model/account/TicketFieldType;

.field private static final logger:Lorg/slf4j/Logger;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zendesk/api/model/account/TicketFieldType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final apiVal:Ljava/lang/String;

.field private final systemField:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 20
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "TICKETPROBLEM"

    const-string v4, "ticket_problem"

    invoke-direct {v2, v3, v7, v6, v4}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETPROBLEM:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 24
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "TICKETINCIDENTS"

    const-string v4, "ticket_incidents"

    invoke-direct {v2, v3, v6, v6, v4}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETINCIDENTS:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 28
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "TICKETFORM"

    const-string v4, "ticket_form"

    invoke-direct {v2, v3, v8, v6, v4}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETFORM:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 32
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "TAG"

    const-string v4, "|--TAG--|"

    invoke-direct {v2, v3, v9, v6, v4}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TAG:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 36
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "REQUESTER"

    const-string v4, "|--REQUESTER--|"

    invoke-direct {v2, v3, v10, v6, v4}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->REQUESTER:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 40
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "CC"

    const/4 v4, 0x5

    const-string v5, "|--CC--|"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->CC:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 44
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "DUEDATE"

    const/4 v4, 0x6

    const-string v5, "|--DUE_DATE--|"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->DUEDATE:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 48
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "SUBJECT"

    const/4 v4, 0x7

    const-string v5, "subject"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->SUBJECT:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 52
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "DESCRIPTION"

    const/16 v4, 0x8

    const-string v5, "description"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->DESCRIPTION:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 56
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "COMMENT"

    const/16 v4, 0x9

    const-string v5, "|--COMMENT--|"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->COMMENT:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 60
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "STATUS"

    const/16 v4, 0xa

    const-string v5, "status"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->STATUS:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 64
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "TYPE"

    const/16 v4, 0xb

    const-string v5, "tickettype"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TYPE:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 68
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "PRIORITY"

    const/16 v4, 0xc

    const-string v5, "priority"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->PRIORITY:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 72
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "GROUP"

    const/16 v4, 0xd

    const-string v5, "group"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->GROUP:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 76
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "ASSIGNEE"

    const/16 v4, 0xe

    const-string v5, "assignee"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->ASSIGNEE:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 80
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "TAGGER"

    const/16 v4, 0xf

    const-string v5, "tagger"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TAGGER:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 84
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "CHECKBOX"

    const/16 v4, 0x10

    const-string v5, "checkbox"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->CHECKBOX:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 88
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "INTEGER"

    const/16 v4, 0x11

    const-string v5, "integer"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->INTEGER:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 92
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "REGEX"

    const/16 v4, 0x12

    const-string v5, "regexp"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->REGEX:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 96
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "TEXTAREA"

    const/16 v4, 0x13

    const-string v5, "textarea"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TEXTAREA:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 100
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "DECIMAL"

    const/16 v4, 0x14

    const-string v5, "decimal"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->DECIMAL:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 104
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "TEXT"

    const/16 v4, 0x15

    const-string v5, "text"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TEXT:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 108
    new-instance v2, Lcom/zendesk/api/model/account/TicketFieldType;

    const-string v3, "DATE"

    const/16 v4, 0x16

    const-string v5, "date"

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/zendesk/api/model/account/TicketFieldType;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->DATE:Lcom/zendesk/api/model/account/TicketFieldType;

    .line 15
    const/16 v2, 0x17

    new-array v2, v2, [Lcom/zendesk/api/model/account/TicketFieldType;

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETPROBLEM:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETINCIDENTS:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETFORM:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v3, v2, v8

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->TAG:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v3, v2, v9

    sget-object v3, Lcom/zendesk/api/model/account/TicketFieldType;->REQUESTER:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v3, v2, v10

    const/4 v3, 0x5

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->CC:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->DUEDATE:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->SUBJECT:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->DESCRIPTION:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->COMMENT:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->STATUS:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->TYPE:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->PRIORITY:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->GROUP:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->ASSIGNEE:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->TAGGER:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->CHECKBOX:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->INTEGER:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/16 v3, 0x12

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->REGEX:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/16 v3, 0x13

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->TEXTAREA:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/16 v3, 0x14

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->DECIMAL:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/16 v3, 0x15

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->TEXT:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    const/16 v3, 0x16

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->DATE:Lcom/zendesk/api/model/account/TicketFieldType;

    aput-object v4, v2, v3

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->$VALUES:[Lcom/zendesk/api/model/account/TicketFieldType;

    .line 110
    const-class v2, Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->logger:Lorg/slf4j/Logger;

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->lookup:Ljava/util/Map;

    .line 115
    const-class v2, Lcom/zendesk/api/model/account/TicketFieldType;

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

    check-cast v1, Lcom/zendesk/api/model/account/TicketFieldType;

    .line 116
    .local v1, s:Lcom/zendesk/api/model/account/TicketFieldType;
    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->lookup:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFieldType;->getApiVal()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    .end local v1           #s:Lcom/zendesk/api/model/account/TicketFieldType;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "systemField"
    .parameter "apiVal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput-object p4, p0, Lcom/zendesk/api/model/account/TicketFieldType;->apiVal:Ljava/lang/String;

    .line 125
    iput-boolean p3, p0, Lcom/zendesk/api/model/account/TicketFieldType;->systemField:Z

    .line 126
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/zendesk/api/model/account/TicketFieldType;
    .locals 4
    .parameter "apiVal"

    .prologue
    .line 154
    sget-object v1, Lcom/zendesk/api/model/account/TicketFieldType;->lookup:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/TicketFieldType;

    .line 155
    .local v0, tft:Lcom/zendesk/api/model/account/TicketFieldType;
    if-nez v0, :cond_0

    .line 156
    sget-object v1, Lcom/zendesk/api/model/account/TicketFieldType;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TicketFieldType unknown ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 158
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zendesk/api/model/account/TicketFieldType;
    .locals 1
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/TicketFieldType;

    return-object v0
.end method

.method public static values()[Lcom/zendesk/api/model/account/TicketFieldType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/zendesk/api/model/account/TicketFieldType;->$VALUES:[Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-virtual {v0}, [Lcom/zendesk/api/model/account/TicketFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zendesk/api/model/account/TicketFieldType;

    return-object v0
.end method


# virtual methods
.method public getApiVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zendesk/api/model/account/TicketFieldType;->apiVal:Ljava/lang/String;

    return-object v0
.end method

.method public isSystemField()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/zendesk/api/model/account/TicketFieldType;->systemField:Z

    return v0
.end method
