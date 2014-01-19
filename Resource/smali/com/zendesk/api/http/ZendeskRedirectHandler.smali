.class public Lcom/zendesk/api/http/ZendeskRedirectHandler;
.super Ljava/lang/Object;
.source "ZendeskRedirectHandler.java"

# interfaces
.implements Lcom/zendesk/api/http/RedirectHandler;


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/zendesk/api/http/RedirectHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/http/ZendeskRedirectHandler;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRedirect(Lcom/zendesk/api/http/Request;Lorg/apache/http/HttpResponse;)V
    .locals 2
    .parameter "request"
    .parameter "resp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/zendesk/api/http/Request;->getRedirectURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/tickets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p1, Lcom/zendesk/api/http/Request;->httpMethod:B

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zendesk/api/http/Request;->getRedirectURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?include[]=collaborators"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/api/http/Request;->setRedirectURL(Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/zendesk/api/http/ZendeskRedirectHandler;->logger:Lorg/slf4j/Logger;

    const-string v1, "Ticket Redirect received"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/zendesk/api/http/Request;->execute()V

    .line 24
    return-void
.end method
