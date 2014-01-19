.class public Lcom/zendesk/api/model/shared/ZDDate;
.super Lcom/zendesk/api/model/shared/Date;
.source "ZDDate.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/shared/Date;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/zendesk/api/model/shared/ZDDate;",
        ">;"
    }
.end annotation


# static fields
.field public static final API_DATE_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm:ss Z"

.field private static final DEFAULT_TIME_FORMAT:Ljava/lang/String; = "HH:mm"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/model/shared/Date;->defaultDateFormat:Ljava/text/DateFormat;

    .line 29
    const-string v0, "HH:mm"

    sput-object v0, Lcom/zendesk/api/model/shared/Date;->defaultTimeFormat:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zendesk/api/model/shared/Date;-><init>(Ljava/util/Calendar;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "date"

    .prologue
    .line 47
    invoke-static {p1}, Lcom/zendesk/api/model/shared/ZDDate;->parse(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zendesk/api/model/shared/Date;-><init>(Ljava/util/Calendar;)V

    .line 48
    return-void
.end method

.method private static parse(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 10
    .parameter "dateString"

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "1970-01-01"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 84
    const/4 v8, 0x0

    const/4 v9, 0x4

    :try_start_0
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 85
    .local v7, year:I
    const/4 v8, 0x5

    const/4 v9, 0x7

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 86
    .local v5, month:I
    const/16 v8, 0x8

    const/16 v9, 0xa

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, day:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 89
    .local v0, cal:Ljava/util/Calendar;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 90
    const/4 v8, 0x2

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 91
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 92
    const/16 v8, 0xb

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 93
    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 94
    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 95
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 96
    const-string v8, "UTC"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #day:I
    .end local v5           #month:I
    .end local v7           #year:I
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 105
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x4

    :try_start_1
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 106
    .restart local v7       #year:I
    const/4 v8, 0x5

    const/4 v9, 0x7

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 107
    .restart local v5       #month:I
    const/16 v8, 0x8

    const/16 v9, 0xa

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 109
    .restart local v1       #day:I
    const/16 v8, 0xb

    const/16 v9, 0xd

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 110
    .local v3, hour:I
    const/16 v8, 0xe

    const/16 v9, 0x10

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 111
    .local v4, minute:I
    const/16 v8, 0x11

    const/16 v9, 0x13

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 113
    .local v6, seconds:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 114
    .restart local v0       #cal:Ljava/util/Calendar;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 115
    const/4 v8, 0x2

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 116
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 117
    const/16 v8, 0xb

    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 118
    const/16 v8, 0xc

    invoke-virtual {v0, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 119
    const/16 v8, 0xd

    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 120
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 121
    const-string v8, "UTC"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 123
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #day:I
    .end local v3           #hour:I
    .end local v4           #minute:I
    .end local v5           #month:I
    .end local v6           #seconds:I
    .end local v7           #year:I
    :catch_1
    move-exception v2

    .line 124
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static setTimeFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 38
    sput-object p0, Lcom/zendesk/api/model/shared/Date;->defaultTimeFormat:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/zendesk/api/model/shared/ZDDate;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zendesk/api/model/shared/ZDDate;->cal:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/ZDDate;->getCal()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    check-cast p1, Lcom/zendesk/api/model/shared/ZDDate;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zendesk/api/model/shared/ZDDate;->compareTo(Lcom/zendesk/api/model/shared/ZDDate;)I

    move-result v0

    return v0
.end method
