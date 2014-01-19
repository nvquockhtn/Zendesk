.class public Lcom/zendesk/api/http/RequestException;
.super Ljava/lang/Exception;
.source "RequestException.java"


# static fields
.field public static final PARSING_ERROR:I = -0x1e240

.field private static final serialVersionUID:J = -0x193e75f5f4b20ae9L


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "errorCode"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 32
    invoke-static {p2}, Lcom/zendesk/api/http/RequestException;->parseAPIError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    iput p1, p0, Lcom/zendesk/api/http/RequestException;->errorCode:I

    .line 34
    return-void
.end method

.method public static parseAPIError(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "error"

    .prologue
    .line 53
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .local v11, sb:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    .local v6, json:Lorg/json/JSONObject;
    const-string v12, "details"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 80
    .local v1, details:Lorg/json/JSONObject;
    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 83
    .local v8, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 85
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 86
    .local v7, key:Ljava/lang/String;
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 88
    .local v0, base:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v5, v12, :cond_0

    .line 90
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 92
    .local v3, entry:Lorg/json/JSONObject;
    instance-of v12, v3, Lorg/json/JSONObject;

    if-eqz v12, :cond_2

    .line 94
    const-string v12, "description"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, s:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 98
    const-string v12, ":"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 100
    const-string v12, ":"

    const-string v13, "-"

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 103
    :cond_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .end local v10           #s:Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 109
    .end local v0           #base:Lorg/json/JSONArray;
    .end local v3           #entry:Lorg/json/JSONObject;
    .end local v5           #i:I
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_3
    const-string v12, "error"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 110
    .local v4, errorObj:Lorg/json/JSONObject;
    if-eqz v4, :cond_4

    .line 111
    const-string v12, "message"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 112
    .local v9, message:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 113
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v9           #message:Ljava/lang/String;
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 123
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 125
    .end local v1           #details:Lorg/json/JSONObject;
    .end local v4           #errorObj:Lorg/json/JSONObject;
    .end local v6           #json:Lorg/json/JSONObject;
    .end local p0
    :cond_5
    :goto_1
    return-object p0

    .line 119
    .restart local p0
    :catch_0
    move-exception v2

    .line 120
    .local v2, e:Ljava/lang/Exception;
    goto :goto_1
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/zendesk/api/http/RequestException;->errorCode:I

    return v0
.end method
