.class public Lcom/zendesk/api/model/ticket/audits/types/VoiceData;
.super Ljava/lang/Object;
.source "VoiceData.java"


# static fields
.field private static final KEY_ANSWERED_BY_ID:Ljava/lang/String; = "answered_by_id"

.field private static final KEY_CALL_DURATION:Ljava/lang/String; = "call_duration"

.field private static final KEY_CALL_ID:Ljava/lang/String; = "call_id"

.field private static final KEY_FROM:Ljava/lang/String; = "from"

.field private static final KEY_LOCATION:Ljava/lang/String; = "location"

.field private static final KEY_RECORDING_DURATION:Ljava/lang/String; = "recording_duration"

.field private static final KEY_RECORDING_URL:Ljava/lang/String; = "recording_url"

.field private static final KEY_STARTED_AT:Ljava/lang/String; = "started_at"

.field private static final KEY_TO:Ljava/lang/String; = "to"

.field private static final KEY_TRANSCRIPTION_STATUS:Ljava/lang/String; = "transcription_status"

.field private static final KEY_TRANSCRIPTION_TEXT:Ljava/lang/String; = "transcription_text"


# instance fields
.field private answeredById:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "answered_by_id"
    .end annotation
.end field

.field private callDuration:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "call_duration"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private callId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "call_id"
    .end annotation
.end field

.field private from:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "from"
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "location"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private recordingDuration:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "recording_duration"
    .end annotation
.end field

.field private recordingUrl:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "recording_url"
    .end annotation
.end field

.field private startedAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "started_at"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private to:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "to"
    .end annotation
.end field

.field private transcriptionStatus:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "transcription_status"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private transcriptionText:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "transcription_text"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "to"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->to:Ljava/lang/String;

    .line 62
    const-string v0, "recording_url"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->recordingUrl:Ljava/lang/String;

    .line 63
    const-string v0, "answered_by_id"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->answeredById:Ljava/lang/Long;

    .line 64
    const-string v0, "transcription_status"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->transcriptionStatus:Ljava/lang/String;

    .line 65
    const-string v0, "started_at"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->startedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 66
    const-string v0, "recording_duration"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->recordingDuration:Ljava/lang/Integer;

    .line 67
    const-string v0, "from"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->from:Ljava/lang/String;

    .line 68
    const-string v0, "call_id"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->callId:Ljava/lang/Long;

    .line 69
    const-string v0, "call_duration"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->callDuration:Ljava/lang/Integer;

    .line 70
    const-string v0, "transcription_text"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->transcriptionText:Ljava/lang/String;

    .line 71
    const-string v0, "location"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->location:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static isVoiceData(Lorg/json/JSONObject;)Z
    .locals 1
    .parameter "json"

    .prologue
    .line 81
    const-string v0, "transcription_status"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAnsweredById()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->answeredById:Ljava/lang/Long;

    return-object v0
.end method

.method public getCallDuration()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->callDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCallId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->callId:Ljava/lang/Long;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordingDuration()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->recordingDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRecordingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->recordingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->startedAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getTranscriptionStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->transcriptionStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTranscriptionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;->transcriptionText:Ljava/lang/String;

    return-object v0
.end method
