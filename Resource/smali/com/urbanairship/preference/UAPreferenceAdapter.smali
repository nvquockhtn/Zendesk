.class public Lcom/urbanairship/preference/UAPreferenceAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/preference/UAPreferenceAdapter$3;
    }
.end annotation


# static fields
.field private static APID_MAX_RETRIES:I

.field private static APID_RETRY_DELAY:I


# instance fields
.field private apidRetryCount:I

.field private locPrefs:Lcom/urbanairship/location/LocationPreferences;

.field private preferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/urbanairship/preference/UAPreference$PreferenceType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pushPrefs:Lcom/urbanairship/push/PushPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/urbanairship/preference/UAPreferenceAdapter;->APID_MAX_RETRIES:I

    const/16 v0, 0x3e8

    sput v0, Lcom/urbanairship/preference/UAPreferenceAdapter;->APID_RETRY_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceScreen;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->shared()Lcom/urbanairship/location/UALocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/location/UALocationManager;->getPreferences()Lcom/urbanairship/location/LocationPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->locPrefs:Lcom/urbanairship/location/LocationPreferences;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->preferences:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->apidRetryCount:I

    invoke-direct {p0, p1}, Lcom/urbanairship/preference/UAPreferenceAdapter;->checkForUAPreferences(Landroid/preference/PreferenceGroup;)V

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/preference/UAPreferenceAdapter;Lcom/urbanairship/preference/UAPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/preference/UAPreferenceAdapter;->trackPreference(Lcom/urbanairship/preference/UAPreference;)V

    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/preference/UAPreferenceAdapter;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->preferences:Ljava/util/Map;

    return-object v0
.end method

.method private checkForUAPreferences(Landroid/preference/PreferenceGroup;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    instance-of v2, v0, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0}, Lcom/urbanairship/preference/UAPreferenceAdapter;->checkForUAPreferences(Landroid/preference/PreferenceGroup;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    instance-of v2, v0, Lcom/urbanairship/preference/UAPreference;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/urbanairship/preference/UAPreference;

    invoke-direct {p0, v0}, Lcom/urbanairship/preference/UAPreferenceAdapter;->trackPreference(Lcom/urbanairship/preference/UAPreference;)V

    goto :goto_1
.end method

.method private getInternalPreference(Lcom/urbanairship/preference/UAPreference$PreferenceType;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/urbanairship/preference/UAPreferenceAdapter$3;->$SwitchMap$com$urbanairship$preference$UAPreference$PreferenceType:[I

    invoke-virtual {p1}, Lcom/urbanairship/preference/UAPreference$PreferenceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->locPrefs:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isBackgroundLocationEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->locPrefs:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isLocationEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->locPrefs:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isForegroundLocationEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isPushEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isQuietTimeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->getQuietTimeInterval()[Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->getQuietTimeInterval()[Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isSoundEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isVibrateEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getAPID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->shared()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private isServiceEnabledForPreferenceType(Lcom/urbanairship/preference/UAPreference$PreferenceType;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/urbanairship/preference/UAPreferenceAdapter$3;->$SwitchMap$com$urbanairship$preference$UAPreference$PreferenceType:[I

    invoke-virtual {p1}, Lcom/urbanairship/preference/UAPreference$PreferenceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/urbanairship/AirshipConfigOptions;->locationOptions:Lcom/urbanairship/LocationOptions;

    iget-boolean v1, v1, Lcom/urbanairship/LocationOptions;->locationServiceEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->locPrefs:Lcom/urbanairship/location/LocationPreferences;

    if-nez v1, :cond_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to modify preference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the locationService is not enabled. Ignoring preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/urbanairship/AirshipConfigOptions;->pushServiceEnabled:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to modify preference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the pushService is not enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/urbanairship/AirshipConfigOptions;->pushServiceEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/urbanairship/AirshipConfigOptions;->richPushEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    if-nez v1, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setInternalPreference(Lcom/urbanairship/preference/UAPreference$PreferenceType;Ljava/lang/Object;)V
    .locals 5

    sget-object v0, Lcom/urbanairship/preference/UAPreferenceAdapter$3;->$SwitchMap$com$urbanairship$preference$UAPreference$PreferenceType:[I

    invoke-virtual {p1}, Lcom/urbanairship/preference/UAPreference$PreferenceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->enableBackgroundLocation()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->disableBackgroundLocation()V

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->enableLocation()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->disableLocation()V

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->enableForegroundLocation()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->disableForegroundLocation()V

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/urbanairship/push/PushManager;->enablePush()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/urbanairship/push/PushManager;->disablePush()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setQuietTimeEnabled(Z)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setSoundEnabled(Z)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setVibrateEnabled(Z)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getQuietTimeInterval()[Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_1
    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    new-instance v2, Ljava/util/Date;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0, v2}, Lcom/urbanairship/push/PushPreferences;->setQuietTimeInterval(Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getQuietTimeInterval()[Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_2
    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    new-instance v2, Ljava/util/Date;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/push/PushPreferences;->setQuietTimeInterval(Ljava/util/Date;Ljava/util/Date;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private trackPreference(Lcom/urbanairship/preference/UAPreference;)V
    .locals 4

    invoke-interface {p1}, Lcom/urbanairship/preference/UAPreference;->getPreferenceType()Lcom/urbanairship/preference/UAPreference$PreferenceType;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference returned a null preference type. Ignoring preference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/urbanairship/preference/UAPreferenceAdapter;->isServiceEnabledForPreferenceType(Lcom/urbanairship/preference/UAPreference$PreferenceType;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/urbanairship/preference/UAPreferenceAdapter;->getInternalPreference(Lcom/urbanairship/preference/UAPreference$PreferenceType;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {p1, v1}, Lcom/urbanairship/preference/UAPreference;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    check-cast p1, Landroid/preference/Preference;

    new-instance v1, Lcom/urbanairship/preference/UAPreferenceAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/urbanairship/preference/UAPreferenceAdapter$2;-><init>(Lcom/urbanairship/preference/UAPreferenceAdapter;Lcom/urbanairship/preference/UAPreference$PreferenceType;)V

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception setting value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Ignoring preference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/urbanairship/preference/UAPreference$PreferenceType;->APID:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->pushPrefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->isPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->apidRetryCount:I

    sget v2, Lcom/urbanairship/preference/UAPreferenceAdapter;->APID_MAX_RETRIES:I

    if-ge v1, v2, :cond_2

    iget v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->apidRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->apidRetryCount:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/urbanairship/preference/UAPreferenceAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/urbanairship/preference/UAPreferenceAdapter$1;-><init>(Lcom/urbanairship/preference/UAPreferenceAdapter;Lcom/urbanairship/preference/UAPreference;)V

    sget v2, Lcom/urbanairship/preference/UAPreferenceAdapter;->APID_RETRY_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public applyUrbanAirshipPreferences()V
    .locals 6

    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->preferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    iget-object v2, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->preferences:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/urbanairship/preference/UAPreferenceAdapter;->setInternalPreference(Lcom/urbanairship/preference/UAPreference$PreferenceType;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", invalid value "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
