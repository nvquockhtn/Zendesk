.class public Lcom/zendesk/api/model/shared/Date;
.super Ljava/lang/Object;
.source "Date.java"


# static fields
.field protected static defaultDateFormat:Ljava/text/DateFormat;

.field protected static defaultTimeFormat:Ljava/lang/String;


# instance fields
.field protected cal:Ljava/util/Calendar;

.field protected dateString:Ljava/lang/String;

.field protected timeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0
    .parameter "cal"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Date;->cal:Ljava/util/Calendar;

    .line 27
    return-void
.end method

.method public static safeEqualsDate(Lcom/zendesk/api/model/shared/Date;Lcom/zendesk/api/model/shared/Date;)Z
    .locals 7
    .parameter "d"
    .parameter "d2"

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 141
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/zendesk/api/model/shared/Date;->getCal()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Date;->getCal()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/zendesk/api/model/shared/Date;->getCal()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Date;->getCal()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/zendesk/api/model/shared/Date;->getCal()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Date;->getCal()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/zendesk/api/model/shared/Date;->getCal()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Date;->getCal()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/zendesk/api/model/shared/Date;->getCal()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Date;->getCal()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/zendesk/api/model/shared/Date;->getCal()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Date;->getCal()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/zendesk/api/model/shared/Date;
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 36
    .local v0, c:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/zendesk/api/model/shared/Date;->cal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 37
    new-instance v1, Lcom/zendesk/api/model/shared/Date;

    invoke-direct {v1, v0}, Lcom/zendesk/api/model/shared/Date;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public decrementDay()V
    .locals 4

    .prologue
    .line 121
    iget-object v2, p0, Lcom/zendesk/api/model/shared/Date;->cal:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 122
    .local v0, t:J
    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    .line 123
    iget-object v2, p0, Lcom/zendesk/api/model/shared/Date;->cal:Ljava/util/Calendar;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 124
    invoke-virtual {p0}, Lcom/zendesk/api/model/shared/Date;->invalidateFormattedStrings()V

    .line 125
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 130
    check-cast p1, Lcom/zendesk/api/model/shared/Date;

    .end local p1
    invoke-static {p0, p1}, Lcom/zendesk/api/model/shared/Date;->safeEqualsDate(Lcom/zendesk/api/model/shared/Date;Lcom/zendesk/api/model/shared/Date;)Z

    move-result v0

    return v0
.end method

.method public getCal()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Date;->cal:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Date;->dateString:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/zendesk/api/model/shared/Date;->defaultDateFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/zendesk/api/model/shared/Date;->defaultDateFormat:Ljava/text/DateFormat;

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/shared/Date;->getFormattedString(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/shared/Date;->dateString:Ljava/lang/String;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Date;->dateString:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "format"

    .prologue
    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 101
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/zendesk/api/model/shared/Date;->cal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFormattedString(Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 1
    .parameter "format"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Date;->cal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Date;->timeString:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/zendesk/api/model/shared/Date;->defaultTimeFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/zendesk/api/model/shared/Date;->defaultTimeFormat:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/shared/Date;->getFormattedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/shared/Date;->timeString:Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Date;->timeString:Ljava/lang/String;

    return-object v0
.end method

.method public incrementDay()V
    .locals 4

    .prologue
    .line 110
    iget-object v2, p0, Lcom/zendesk/api/model/shared/Date;->cal:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 111
    .local v0, t:J
    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    .line 112
    iget-object v2, p0, Lcom/zendesk/api/model/shared/Date;->cal:Ljava/util/Calendar;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 113
    invoke-virtual {p0}, Lcom/zendesk/api/model/shared/Date;->invalidateFormattedStrings()V

    .line 114
    return-void
.end method

.method public invalidateFormattedStrings()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/zendesk/api/model/shared/Date;->dateString:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/zendesk/api/model/shared/Date;->timeString:Ljava/lang/String;

    .line 56
    return-void
.end method
