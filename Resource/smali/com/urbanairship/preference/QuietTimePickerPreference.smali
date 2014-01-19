.class abstract Lcom/urbanairship/preference/QuietTimePickerPreference;
.super Landroid/preference/DialogPreference;

# interfaces
.implements Lcom/urbanairship/preference/UAPreference;


# static fields
.field private static final formatter:Ljava/text/SimpleDateFormat;


# instance fields
.field private currentTime:J

.field private timePicker:Landroid/widget/TimePicker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/urbanairship/preference/QuietTimePickerPreference;->formatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->timePicker:Landroid/widget/TimePicker;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->currentTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->timePicker:Landroid/widget/TimePicker;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->currentTime:J

    return-void
.end method

.method private getCalendar()Ljava/util/Calendar;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-wide v1, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->currentTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->currentTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getSummary()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->getSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/urbanairship/preference/QuietTimePickerPreference;->formatter:Ljava/text/SimpleDateFormat;

    invoke-direct {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/TimePicker;

    invoke-virtual {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->timePicker:Landroid/widget/TimePicker;

    invoke-direct {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->timePicker:Landroid/widget/TimePicker;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->timePicker:Landroid/widget/TimePicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->timePicker:Landroid/widget/TimePicker;

    return-object v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->getPreferenceType()Lcom/urbanairship/preference/UAPreference$PreferenceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/preference/UAPreference$PreferenceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public onDialogClosed(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/urbanairship/preference/QuietTimePickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->currentTime:J

    invoke-virtual {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/preference/QuietTimePickerPreference;->currentTime:J

    invoke-virtual {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->notifyChanged()V

    return-void
.end method

.method protected shouldPersist()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
