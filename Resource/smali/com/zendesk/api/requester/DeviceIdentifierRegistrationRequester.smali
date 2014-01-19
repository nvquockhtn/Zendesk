.class public Lcom/zendesk/api/requester/DeviceIdentifierRegistrationRequester;
.super Lcom/zendesk/api/http/Request;
.source "DeviceIdentifierRegistrationRequester.java"


# static fields
.field private static final KEY_C2DM_REGISTRATION_ID:Ljava/lang/String; = "c2dm_registration_id"

.field private static final KEY_DEVICE_IDENTIFIER:Ljava/lang/String; = "device_identifier"

.field private static final KEY_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field private static final KEY_TOKEN:Ljava/lang/String; = "token"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "token"
    .parameter "c2dmRegId"
    .parameter "deviceType"

    .prologue
    .line 28
    const-string v3, "device_identifiers.json"

    invoke-direct {p0, v3}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;)V

    .line 30
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/zendesk/api/requester/DeviceIdentifierRegistrationRequester;->setHttpMethod(B)V

    .line 31
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 32
    .local v2, o:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .local v0, deviceIdentifiers:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "token"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v3, "device_type"

    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v3, "c2dm_registration_id"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v3, "device_identifier"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zendesk/api/requester/DeviceIdentifierRegistrationRequester;->setBody(Ljava/lang/String;)V

    .line 43
    return-void

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error creating mesage"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
