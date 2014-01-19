.class public Lcom/zendesk/api/model/ticket/Ticket;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "Ticket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/ticket/Ticket;",
        ">;"
    }
.end annotation


# static fields
.field static final DUE_DATE_FORMAT:Ljava/lang/String; = "dd-MM-yyyy"

.field private static final KEY_ASSIGNEE_ID:Ljava/lang/String; = "assignee_id"

.field private static final KEY_CC_EMAIL:Ljava/lang/String; = "email"

.field private static final KEY_CC_NAME:Ljava/lang/String; = "name"

.field private static final KEY_CHANNEL_BACK:Ljava/lang/String; = "channel_back"

.field private static final KEY_COLLABORATORS:Ljava/lang/String; = "collaborator_ids"

.field private static final KEY_COMMENT:Ljava/lang/String; = "comment"

.field private static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field private static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final KEY_DUE_DATE:Ljava/lang/String; = "due_at"

.field private static final KEY_EXTERNAL_ID:Ljava/lang/String; = "external_id"

.field private static final KEY_FORUM_TOPIC_ID:Ljava/lang/String; = "forum_topic_id"

.field private static final KEY_GROUP_ID:Ljava/lang/String; = "group_id"

.field private static final KEY_HAS_INCIDENTS:Ljava/lang/String; = "has_incidents"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_IS_PUBLIC:Ljava/lang/String; = "public"

.field private static final KEY_LAST_COMMENT:Ljava/lang/String; = "last_comment"

.field private static final KEY_ORGANIZATION_ID:Ljava/lang/String; = "organization_id"

.field private static final KEY_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final KEY_PRIORITY:Ljava/lang/String; = "priority"

.field private static final KEY_PROBLEM_ID:Ljava/lang/String; = "problem_id"

.field private static final KEY_RECIPIENT:Ljava/lang/String; = "recipient"

.field private static final KEY_REQUESTER:Ljava/lang/String; = "requester"

.field private static final KEY_REQUESTER_EMAIL:Ljava/lang/String; = "email"

.field private static final KEY_REQUESTER_ID:Ljava/lang/String; = "requester_id"

.field private static final KEY_REQUESTER_NAME:Ljava/lang/String; = "name"

.field private static final KEY_SATISFACTION_RATING:Ljava/lang/String; = "satisfaction_rating"

.field private static final KEY_SET_COLLABORATORS:Ljava/lang/String; = "collaborators"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_SUBJECT:Ljava/lang/String; = "subject"

.field private static final KEY_SUBMITTER_ID:Ljava/lang/String; = "submitter_id"

.field private static final KEY_TAGS:Ljava/lang/String; = "tags"

.field private static final KEY_TICKET:Ljava/lang/String; = "ticket"

.field private static final KEY_TICKET_FIELD_ENTRIES:Ljava/lang/String; = "custom_fields"

.field private static final KEY_TICKET_FIELD_ID:Ljava/lang/String; = "id"

.field private static final KEY_TICKET_FORM_ID:Ljava/lang/String; = "ticket_form_id"

.field private static final KEY_TICKET_TYPE_ID:Ljava/lang/String; = "type"

.field private static final KEY_UPDATED_AT:Ljava/lang/String; = "updated_at"

.field private static final KEY_UPLOADS:Ljava/lang/String; = "uploads"

.field private static final KEY_USERS:Ljava/lang/String; = "users"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_VIA:Ljava/lang/String; = "via"

.field private static final TICKET_DELETE_REQ:Ljava/lang/String; = "ticket-delete"

.field private static final TICKET_REFRESH_INTERVAL:J = 0x1d4c0L

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private allTicketFieldEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;>;"
        }
    .end annotation
.end field

.field private assigneeId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "assignee_id"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private audits:Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field private collaborators:Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "collaborator_ids"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
        type = Ljava/util/List;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private comment:Lcom/zendesk/api/model/ticket/audits/Comment;

.field private createdAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "created_at"
    .end annotation
.end field

.field private description:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "description"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dueDate:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "due_at"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Lcom/zendesk/api/model/shared/ZDDate;",
            ">;"
        }
    .end annotation
.end field

.field private externalId:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "external_id"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private forumTopicId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "forum_topic_id"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private groupId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "group_id"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private hasIncidents:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "has_incidents"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
    .end annotation
.end field

.field private incidents:Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

.field private incidentsForProblemTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastComment:Lcom/zendesk/api/model/ticket/LastComment;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "last_comment"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private organizationId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "organization_id"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private permissions:Lcom/zendesk/api/model/ticket/TicketPermissions;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "permissions"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private priority:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "priority"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private problemId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "problem_id"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private problemLinkedToIncidentTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private recipient:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "recipient"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private requesterId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "requester_id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private satisfactionRating:Lcom/zendesk/api/model/ticket/SatisfactionRating;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "satisfaction_rating"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private shouldRefresh:Z

.field private status:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "status"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subject:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subject"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private submitterId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "submitter_id"
    .end annotation
.end field

.field private tags:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation runtime Lcom/zendesk/api/APIKey;
        listOf = Ljava/lang/String;
        path = "tags"
        type = Ljava/util/List;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ticketFieldEntries:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        listOf = Lcom/zendesk/api/model/ticket/TicketFieldEntry;
        path = "fields"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "ticket_form_id"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private ticketFormId:Ljava/lang/Long;

.field private ticketType:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "type"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ticketUpdateHandler:Lcom/zendesk/api/model/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/ticket/Ticket;",
            ">;"
        }
    .end annotation
.end field

.field private updatedAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "updated_at"
    .end annotation
.end field

.field private via:Lcom/zendesk/api/model/shared/Via;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "via"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/zendesk/api/model/ticket/Ticket;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/model/ticket/Ticket;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 4
    .parameter "baseModel"

    .prologue
    .line 211
    sget-object v0, Lcom/zendesk/api/model/cache/TicketCache;->NEW_TICKET_ID:Ljava/lang/Long;

    invoke-direct {p0, p1, v0}, Lcom/zendesk/api/model/ticket/Ticket;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 212
    const-wide/32 v0, 0x1d4c0

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->setRefreshInterval(J)V

    .line 213
    invoke-direct {p0}, Lcom/zendesk/api/model/ticket/Ticket;->setupTicketFieldList()V

    .line 214
    new-instance v0, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    sget-object v2, Lcom/zendesk/api/model/cache/TicketCache;->NEW_TICKET_ID:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;-><init>(Lcom/zendesk/api/model/BaseModel;J)V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidents:Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    .line 215
    return-void
.end method

.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V
    .locals 4
    .parameter "baseModel"
    .parameter "ticketId"

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 159
    new-instance v0, Lcom/zendesk/api/model/ticket/TicketPermissions;

    invoke-direct {v0}, Lcom/zendesk/api/model/ticket/TicketPermissions;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->permissions:Lcom/zendesk/api/model/ticket/TicketPermissions;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFieldEntries:Ljava/util/List;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFormId:Ljava/lang/Long;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->allTicketFieldEntries:Ljava/util/List;

    .line 177
    new-instance v0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;-><init>(Lcom/zendesk/api/model/ticket/Ticket;)V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->audits:Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->shouldRefresh:Z

    .line 193
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 194
    iput-object p2, p0, Lcom/zendesk/api/model/ticket/Ticket;->id:Ljava/lang/Long;

    .line 195
    invoke-direct {p0}, Lcom/zendesk/api/model/ticket/Ticket;->setupTicketFieldList()V

    .line 196
    invoke-interface {p1}, Lcom/zendesk/api/model/BaseModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {p1}, Lcom/zendesk/api/model/BaseModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->submitterId:Ljava/lang/Long;

    .line 199
    :cond_0
    const-wide/32 v0, 0x1d4c0

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->setRefreshInterval(J)V

    .line 200
    new-instance v0, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;-><init>(Lcom/zendesk/api/model/BaseModel;J)V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidents:Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    .line 201
    return-void
.end method

.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V
    .locals 4
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 159
    new-instance v0, Lcom/zendesk/api/model/ticket/TicketPermissions;

    invoke-direct {v0}, Lcom/zendesk/api/model/ticket/TicketPermissions;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->permissions:Lcom/zendesk/api/model/ticket/TicketPermissions;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFieldEntries:Ljava/util/List;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFormId:Ljava/lang/Long;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->allTicketFieldEntries:Ljava/util/List;

    .line 177
    new-instance v0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;-><init>(Lcom/zendesk/api/model/ticket/Ticket;)V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->audits:Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->shouldRefresh:Z

    .line 227
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 228
    new-instance v0, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    sget-object v2, Lcom/zendesk/api/model/cache/TicketCache;->NEW_TICKET_ID:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;-><init>(Lcom/zendesk/api/model/BaseModel;J)V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidents:Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    .line 229
    const-wide/32 v0, 0x1d4c0

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->setRefreshInterval(J)V

    .line 230
    invoke-direct {p0}, Lcom/zendesk/api/model/ticket/Ticket;->setupTicketFieldList()V

    .line 231
    invoke-direct {p0, p2}, Lcom/zendesk/api/model/ticket/Ticket;->update(Lorg/json/JSONObject;)V

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/api/model/ticket/Ticket;)Lcom/zendesk/api/model/BaseModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/api/model/ticket/Ticket;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zendesk/api/model/ticket/Ticket;Lcom/zendesk/api/model/ResponseHandler;)Lcom/zendesk/api/model/ResponseHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketUpdateHandler:Lcom/zendesk/api/model/ResponseHandler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/zendesk/api/model/ticket/Ticket;->deleteLocalTicketRefs()V

    return-void
.end method

.method private addCollaborators(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "ticketJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1027
    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->collaborators:Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->collaborators:Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->hasBeenEdited()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1028
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1029
    .local v0, cols:Lorg/json/JSONArray;
    const-string v4, "collaborators"

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1030
    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->collaborators:Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1031
    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->collaborators:Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/api/model/users/User;

    .line 1032
    .local v3, u:Lcom/zendesk/api/model/users/User;
    invoke-virtual {v3}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1033
    invoke-virtual {v3}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1035
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1036
    .local v2, o:Lorg/json/JSONObject;
    invoke-virtual {v3}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zendesk/api/model/ticket/Ticket;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1037
    const-string v4, "name"

    invoke-virtual {v3}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1039
    :cond_1
    const-string v4, "email"

    invoke-virtual {v3}, Lcom/zendesk/api/model/users/User;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1040
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1045
    .end local v0           #cols:Lorg/json/JSONArray;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #o:Lorg/json/JSONObject;
    .end local v3           #u:Lcom/zendesk/api/model/users/User;
    :cond_2
    return-void
.end method

.method private addComment(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "ticketJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1070
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/audits/Comment;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zendesk/api/model/ticket/Ticket;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1072
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1073
    .local v1, commentJSON:Lorg/json/JSONObject;
    const-string v3, "comment"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1075
    const-string v3, "value"

    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/Comment;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1076
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->via:Lcom/zendesk/api/model/shared/Via;

    invoke-virtual {v3}, Lcom/zendesk/api/model/shared/Via;->getChannel()Lcom/zendesk/api/model/account/ViaChannel;

    move-result-object v3

    sget-object v4, Lcom/zendesk/api/model/account/ViaChannel;->TWITTER:Lcom/zendesk/api/model/account/ViaChannel;

    if-ne v3, v4, :cond_0

    .line 1077
    const-string v3, "channel_back"

    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/Comment;->getChannelBack()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1080
    :cond_0
    const-string v3, "public"

    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/Comment;->getIsPublic()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1082
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/audits/Comment;->getAttachmentToken()Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, at:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1084
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1085
    .local v2, uploads:Lorg/json/JSONArray;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1086
    const-string v3, "uploads"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1090
    .end local v0           #at:Ljava/lang/String;
    .end local v1           #commentJSON:Lorg/json/JSONObject;
    .end local v2           #uploads:Lorg/json/JSONArray;
    :cond_1
    return-void
.end method

.method private addCustomFieldEdits(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "ticketJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1166
    const/4 v1, 0x0

    .line 1168
    .local v1, entriesArray:Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/zendesk/api/model/ticket/Ticket;->getCurrentTicketForm()Lcom/zendesk/api/model/ticket/forms/TicketForm;

    move-result-object v3

    .line 1170
    .local v3, form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    iget-object v6, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFieldEntries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 1171
    .local v2, entry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/model/account/TicketFieldType;->isSystemField()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1173
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1176
    const/4 v0, 0x1

    .line 1177
    .local v0, canAdd:Z
    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/model/account/TicketField;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->isPartOfTicketForm(J)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1178
    const/4 v0, 0x0

    .line 1180
    :cond_1
    if-nez v1, :cond_2

    .line 1181
    new-instance v1, Lorg/json/JSONArray;

    .end local v1           #entriesArray:Lorg/json/JSONArray;
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1182
    .restart local v1       #entriesArray:Lorg/json/JSONArray;
    const-string v6, "custom_fields"

    invoke-virtual {p1, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1184
    :cond_2
    if-eqz v0, :cond_0

    .line 1185
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1186
    .local v5, jsonObject:Lorg/json/JSONObject;
    const-string v6, "id"

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/account/TicketField;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1188
    const-string v6, "value"

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1189
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1193
    .end local v0           #canAdd:Z
    .end local v2           #entry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    :cond_3
    return-void
.end method

.method private addDescription(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1008
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1010
    .local v0, com:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/audits/Comment;->getAttachmentToken()Ljava/lang/String;

    move-result-object v1

    .line 1011
    .local v1, token:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1012
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1013
    .local v2, uploads:Lorg/json/JSONArray;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1014
    const-string v3, "uploads"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1017
    .end local v2           #uploads:Lorg/json/JSONArray;
    :cond_0
    const-string v3, "value"

    invoke-virtual {p0}, Lcom/zendesk/api/model/ticket/Ticket;->getDescriptionField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1018
    const-string v3, "comment"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1019
    return-void
.end method

.method private addRequester(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "ticketJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1051
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->requesterId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1052
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->requesterId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v3, v2}, Lcom/zendesk/api/model/users/User;->getUser(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v1

    .line 1053
    .local v1, u:Lcom/zendesk/api/model/users/User;
    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1055
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1056
    .local v0, requester:Lorg/json/JSONObject;
    const-string v2, "requester"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1058
    const-string v2, "email"

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1059
    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1060
    const-string v2, "name"

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1066
    .end local v0           #requester:Lorg/json/JSONObject;
    .end local v1           #u:Lcom/zendesk/api/model/users/User;
    :cond_0
    :goto_0
    return-void

    .line 1063
    .restart local v1       #u:Lcom/zendesk/api/model/users/User;
    :cond_1
    const-string v2, "requester_id"

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private addSubject(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "ticketJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->subject:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->subject:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    const-string v0, "subject"

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->subject:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1097
    :cond_0
    return-void
.end method

.method private addSubmitter(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1022
    const-string v0, "submitter_id"

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->submitterId:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1023
    return-void
.end method

.method private addSystemFieldEdits(Lorg/json/JSONObject;)V
    .locals 11
    .parameter "ticketJSON"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1102
    invoke-direct {p0}, Lcom/zendesk/api/model/ticket/Ticket;->getCurrentTicketForm()Lcom/zendesk/api/model/ticket/forms/TicketForm;

    move-result-object v2

    .line 1104
    .local v2, form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->priority:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->priority:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1105
    const/4 v0, 0x1

    .line 1106
    .local v0, canAdd:Z
    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->priority:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/account/TicketField;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->isPartOfTicketForm(J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1107
    const/4 v0, 0x0

    .line 1109
    :cond_0
    if-eqz v0, :cond_1

    .line 1110
    const-string v7, "priority"

    iget-object v8, p0, Lcom/zendesk/api/model/ticket/Ticket;->priority:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1113
    .end local v0           #canAdd:Z
    :cond_1
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->status:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1114
    const-string v7, "status"

    iget-object v8, p0, Lcom/zendesk/api/model/ticket/Ticket;->status:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1116
    :cond_2
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketType:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketType:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1117
    const/4 v0, 0x1

    .line 1118
    .restart local v0       #canAdd:Z
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketType:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/account/TicketField;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->isPartOfTicketForm(J)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1119
    const/4 v0, 0x0

    .line 1121
    :cond_3
    if-eqz v0, :cond_4

    .line 1122
    const-string v7, "type"

    iget-object v8, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketType:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1125
    .end local v0           #canAdd:Z
    :cond_4
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->groupId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1126
    const-string v7, "group_id"

    iget-object v8, p0, Lcom/zendesk/api/model/ticket/Ticket;->groupId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1128
    :cond_5
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->assigneeId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1129
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->assigneeId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1130
    const-string v7, "assignee_id"

    iget-object v8, p0, Lcom/zendesk/api/model/ticket/Ticket;->assigneeId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1133
    :cond_6
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->dueDate:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->dueDate:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1134
    const-string v8, "due_at"

    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->dueDate:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zendesk/api/model/shared/ZDDate;

    const-string v9, "dd-MM-yyyy"

    invoke-virtual {v7, v9}, Lcom/zendesk/api/model/shared/ZDDate;->getFormattedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1137
    :cond_7
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1138
    const-string v7, "ticket_form_id"

    iget-object v8, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1140
    :cond_8
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->tags:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1141
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1142
    .local v5, tagsJSON:Lorg/json/JSONArray;
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->tags:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 1143
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->tags:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1144
    .local v4, tagsArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_9

    .line 1145
    aget-object v7, v4, v3

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1144
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1148
    .end local v3           #i:I
    .end local v4           #tagsArray:[Ljava/lang/String;
    :cond_9
    const-string v7, "tags"

    invoke-virtual {p1, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1150
    .end local v5           #tagsJSON:Lorg/json/JSONArray;
    :cond_a
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemLinkedToIncidentTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemLinkedToIncidentTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1151
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemLinkedToIncidentTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1152
    .local v1, editValue:Ljava/lang/Long;
    const/4 v6, 0x0

    .line 1153
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_c

    .line 1154
    const-string v6, ""

    .line 1158
    :goto_1
    const-string v7, "problem_id"

    invoke-virtual {p1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1161
    .end local v1           #editValue:Ljava/lang/Long;
    .end local v6           #value:Ljava/lang/String;
    :cond_b
    return-void

    .line 1156
    .restart local v1       #editValue:Ljava/lang/Long;
    .restart local v6       #value:Ljava/lang/String;
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public static autocompleteTags(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "query"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1292
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .local v4, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/zendesk/api/requester/TagsAutoCompleteRequester;

    invoke-direct {v2, p0}, Lcom/zendesk/api/requester/TagsAutoCompleteRequester;-><init>(Ljava/lang/String;)V

    .line 1295
    .local v2, req:Lcom/zendesk/api/requester/TagsAutoCompleteRequester;
    invoke-virtual {v2}, Lcom/zendesk/api/requester/TagsAutoCompleteRequester;->execute()V

    .line 1297
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/zendesk/api/requester/TagsAutoCompleteRequester;->getResponseString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1298
    .local v1, json:Lorg/json/JSONObject;
    const-string v6, "tags"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1300
    .local v5, tagsArray:Lorg/json/JSONArray;
    if-eqz v5, :cond_1

    .line 1302
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 1304
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 1305
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1306
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1310
    .end local v0           #i:I
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private buildIncidentsForProblemTicketTicketField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 500
    const/4 v1, 0x0

    .line 503
    .local v1, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/Long;>;"
    new-instance v0, Lcom/zendesk/api/model/account/TicketField;

    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v0, v2}, Lcom/zendesk/api/model/account/TicketField;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    .line 505
    .local v0, tf:Lcom/zendesk/api/model/account/TicketField;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/account/TicketField;->setActive(Ljava/lang/Boolean;)V

    .line 506
    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETINCIDENTS:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/account/TicketField;->setType(Lcom/zendesk/api/model/account/TicketFieldType;)V

    .line 508
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/account/TicketField;->setEditableInPortal(Ljava/lang/Boolean;)V

    .line 509
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/account/TicketField;->setRequired(Ljava/lang/Boolean;)V

    .line 510
    const-wide/16 v2, -0x3e6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/account/TicketField;->setId(Ljava/lang/Long;)V

    .line 512
    if-eqz v0, :cond_0

    .line 513
    new-instance v1, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .end local v1           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v1, v2, v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V

    .line 514
    .restart local v1       #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidents:Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidents:Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->getIncidentTickets()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 516
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidents:Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->getIncidentTickets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 521
    :cond_0
    :goto_0
    return-object v1

    .line 518
    :cond_1
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private buildProblemLinkedToIncidentTicketTicketField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 526
    const/4 v1, 0x0

    .line 528
    .local v1, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/Long;>;"
    new-instance v0, Lcom/zendesk/api/model/account/TicketField;

    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v0, v2}, Lcom/zendesk/api/model/account/TicketField;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    .line 530
    .local v0, tf:Lcom/zendesk/api/model/account/TicketField;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/account/TicketField;->setActive(Ljava/lang/Boolean;)V

    .line 531
    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETPROBLEM:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/account/TicketField;->setType(Lcom/zendesk/api/model/account/TicketFieldType;)V

    .line 533
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/account/TicketField;->setEditableInPortal(Ljava/lang/Boolean;)V

    .line 534
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/account/TicketField;->setRequired(Ljava/lang/Boolean;)V

    .line 535
    const-wide/16 v2, -0x3e5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/account/TicketField;->setId(Ljava/lang/Long;)V

    .line 537
    if-eqz v0, :cond_0

    .line 538
    new-instance v1, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .end local v1           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v1, v2, v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V

    .line 539
    .restart local v1       #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 542
    :cond_0
    return-object v1
.end method

.method private buildTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 11
    .parameter "formTicketId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 456
    const/4 v6, 0x0

    .line 457
    .local v6, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/Long;>;"
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v7}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v7}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/forms/TicketForms;->getListItems()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 460
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v7}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/forms/TicketForms;->getListItems()Ljava/util/List;

    move-result-object v4

    .line 463
    .local v4, listItems:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/forms/TicketForm;>;"
    new-instance v5, Lcom/zendesk/api/model/account/TicketField;

    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v5, v7}, Lcom/zendesk/api/model/account/TicketField;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    .line 465
    .local v5, tf:Lcom/zendesk/api/model/account/TicketField;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/zendesk/api/model/account/TicketField;->setActive(Ljava/lang/Boolean;)V

    .line 466
    sget-object v7, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETFORM:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-virtual {v5, v7}, Lcom/zendesk/api/model/account/TicketField;->setType(Lcom/zendesk/api/model/account/TicketFieldType;)V

    .line 468
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/zendesk/api/model/account/TicketField;->setEditableInPortal(Ljava/lang/Boolean;)V

    .line 469
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/zendesk/api/model/account/TicketField;->setRequired(Ljava/lang/Boolean;)V

    .line 470
    const-wide/16 v7, -0x3e7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/zendesk/api/model/account/TicketField;->setId(Ljava/lang/Long;)V

    .line 472
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 473
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/ticket/forms/TicketForm;

    .line 474
    .local v2, form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->isActive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 475
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, displayName:Ljava/lang/String;
    new-instance v0, Lcom/zendesk/api/model/account/CustomFieldOption;

    invoke-direct {v0, v1}, Lcom/zendesk/api/model/account/CustomFieldOption;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, customFieldOption:Lcom/zendesk/api/model/account/CustomFieldOption;
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/zendesk/api/model/account/CustomFieldOption;->setId(Ljava/lang/Long;)V

    .line 481
    invoke-virtual {v5, v0}, Lcom/zendesk/api/model/account/TicketField;->addCustomFieldOption(Lcom/zendesk/api/model/account/CustomFieldOption;)V

    .line 472
    .end local v0           #customFieldOption:Lcom/zendesk/api/model/account/CustomFieldOption;
    .end local v1           #displayName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 484
    .end local v2           #form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    :cond_1
    const/4 v2, 0x0

    .line 485
    .restart local v2       #form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    if-eqz p1, :cond_3

    .line 486
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v7}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/zendesk/api/model/ticket/forms/TicketForms;->getTicketFormByTicketFormId(J)Lcom/zendesk/api/model/ticket/forms/TicketForm;

    move-result-object v2

    .line 491
    :goto_1
    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 492
    new-instance v6, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .end local v6           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/Long;>;"
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    new-instance v8, Ljava/lang/Long;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->getId()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {v6, v7, v5, v8}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Object;)V

    .line 496
    .end local v2           #form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    .end local v3           #i:I
    .end local v4           #listItems:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/forms/TicketForm;>;"
    .end local v5           #tf:Lcom/zendesk/api/model/account/TicketField;
    .restart local v6       #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/Long;>;"
    :cond_2
    return-object v6

    .line 489
    .restart local v2       #form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    .restart local v3       #i:I
    .restart local v4       #listItems:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/forms/TicketForm;>;"
    .restart local v5       #tf:Lcom/zendesk/api/model/account/TicketField;
    :cond_3
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v7}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/forms/TicketForms;->getDefaultTicketForm()Lcom/zendesk/api/model/ticket/forms/TicketForm;

    move-result-object v2

    goto :goto_1
.end method

.method private checkCanRemoveTicketFormTicketFieldTypeEntry()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 616
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v1}, Lcom/zendesk/api/model/BaseModel;->getAccountConfig()Lcom/zendesk/api/model/account/AccountConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v1}, Lcom/zendesk/api/model/BaseModel;->getAccountConfig()Lcom/zendesk/api/model/account/AccountConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/AccountConfig;->getSubscriptionPlanName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Enterprise"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v1}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/forms/TicketForms;->count()I

    move-result v1

    if-gt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createNewTicketJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 987
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 988
    .local v0, json:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 990
    .local v1, ticketObject:Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->addSystemFieldEdits(Lorg/json/JSONObject;)V

    .line 991
    invoke-direct {p0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->addCustomFieldEdits(Lorg/json/JSONObject;)V

    .line 992
    invoke-direct {p0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->addSubject(Lorg/json/JSONObject;)V

    .line 993
    invoke-direct {p0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->addCollaborators(Lorg/json/JSONObject;)V

    .line 994
    invoke-direct {p0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->addDescription(Lorg/json/JSONObject;)V

    .line 995
    invoke-direct {p0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->addSubmitter(Lorg/json/JSONObject;)V

    .line 996
    invoke-direct {p0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->addRequester(Lorg/json/JSONObject;)V

    .line 998
    const-string v2, "ticket"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 999
    return-object v0
.end method

.method private createUpdateJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 965
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 966
    .local v0, json:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 968
    .local v1, ticketObject:Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->addSystemFieldEdits(Lorg/json/JSONObject;)V

    .line 969
    invoke-direct {p0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->addCustomFieldEdits(Lorg/json/JSONObject;)V

    .line 971
    invoke-direct {p0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->addComment(Lorg/json/JSONObject;)V

    .line 972
    invoke-direct {p0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->addSubject(Lorg/json/JSONObject;)V

    .line 973
    invoke-direct {p0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->addRequester(Lorg/json/JSONObject;)V

    .line 974
    invoke-direct {p0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->addCollaborators(Lorg/json/JSONObject;)V

    .line 976
    const-string v2, "ticket"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 978
    return-object v0
.end method

.method private deleteLocalTicketRefs()V
    .locals 8

    .prologue
    .line 1248
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v7}, Lcom/zendesk/api/model/BaseModel;->getViews()Lcom/zendesk/api/model/views/Views;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/views/Views;->getListItems()Ljava/util/List;

    move-result-object v6

    .line 1250
    .local v6, views:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/views/View;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zendesk/api/model/views/View;

    .line 1251
    .local v5, v:Lcom/zendesk/api/model/views/View;
    invoke-virtual {v5}, Lcom/zendesk/api/model/views/View;->getViewTickets()Lcom/zendesk/api/model/views/View$ViewTickets;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/zendesk/api/model/views/View$ViewTickets;->removeListItem(Ljava/lang/Object;)V

    goto :goto_0

    .line 1254
    .end local v5           #v:Lcom/zendesk/api/model/views/View;
    :cond_0
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v7}, Lcom/zendesk/api/model/BaseModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v7

    invoke-interface {v7, p0}, Lcom/zendesk/api/model/cache/TicketCache;->deleteTicket(Lcom/zendesk/api/model/ticket/Ticket;)V

    .line 1256
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v7}, Lcom/zendesk/api/model/BaseModel;->getBookmarks()Lcom/zendesk/api/model/views/Bookmarks;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/views/Bookmarks;->getBookmarks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/views/Bookmark;

    .line 1257
    .local v0, b:Lcom/zendesk/api/model/views/Bookmark;
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v7

    if-ne v7, p0, :cond_1

    .line 1258
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v7}, Lcom/zendesk/api/model/BaseModel;->getBookmarks()Lcom/zendesk/api/model/views/Bookmarks;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/views/Bookmarks;->getBookmarks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1263
    .end local v0           #b:Lcom/zendesk/api/model/views/Bookmark;
    :cond_2
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v7}, Lcom/zendesk/api/model/BaseModel;->getSearch()Lcom/zendesk/api/model/search/Search;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1264
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    .local v4, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zendesk/api/model/search/SearchResult;>;"
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v7}, Lcom/zendesk/api/model/BaseModel;->getSearch()Lcom/zendesk/api/model/search/Search;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/search/Search;->getListItems()Ljava/util/List;

    move-result-object v2

    .line 1267
    .local v2, searchResults:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/search/SearchResult;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/api/model/search/SearchResult;

    .line 1268
    .local v3, sr:Lcom/zendesk/api/model/search/SearchResult;
    invoke-virtual {v3}, Lcom/zendesk/api/model/search/SearchResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p0, :cond_3

    .line 1269
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1272
    .end local v3           #sr:Lcom/zendesk/api/model/search/SearchResult;
    :cond_4
    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v7}, Lcom/zendesk/api/model/BaseModel;->getSearch()Lcom/zendesk/api/model/search/Search;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/zendesk/api/model/search/Search;->removeListItems(Ljava/util/List;)V

    .line 1274
    .end local v2           #searchResults:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/search/SearchResult;>;"
    .end local v4           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zendesk/api/model/search/SearchResult;>;"
    :cond_5
    return-void
.end method

.method private filterTicketFieldEntryList(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, listOfEntries:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 624
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 625
    .local v0, entry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    if-eqz v0, :cond_2

    .line 626
    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v2

    .line 627
    .local v2, tf:Lcom/zendesk/api/model/account/TicketField;
    if-eqz v2, :cond_2

    .line 629
    invoke-virtual {v2}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v3

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->CC:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v3}, Lcom/zendesk/api/model/BaseModel;->getAccountConfig()Lcom/zendesk/api/model/account/AccountConfig;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v3}, Lcom/zendesk/api/model/BaseModel;->getAccountConfig()Lcom/zendesk/api/model/account/AccountConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/AccountConfig;->getTicketsCollaboration()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 632
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 634
    :cond_0
    invoke-virtual {v2}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v3

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->TAG:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v3}, Lcom/zendesk/api/model/BaseModel;->getAccountConfig()Lcom/zendesk/api/model/account/AccountConfig;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v3}, Lcom/zendesk/api/model/BaseModel;->getAccountConfig()Lcom/zendesk/api/model/account/AccountConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/AccountConfig;->getTicketsTagging()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 637
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 639
    :cond_1
    invoke-virtual {v2}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v3

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETFORM:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lcom/zendesk/api/model/ticket/Ticket;->checkCanRemoveTicketFormTicketFieldTypeEntry()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 640
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 623
    .end local v2           #tf:Lcom/zendesk/api/model/account/TicketField;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    .end local v0           #entry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    :cond_3
    return-void
.end method

.method private getCurrentTicketForm()Lcom/zendesk/api/model/ticket/forms/TicketForm;
    .locals 5

    .prologue
    .line 2081
    const/4 v0, 0x0

    .line 2082
    .local v0, form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v1, :cond_0

    .line 2083
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v1}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v2

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/zendesk/api/model/ticket/forms/TicketForms;->getTicketFormByTicketFormId(J)Lcom/zendesk/api/model/ticket/forms/TicketForm;

    move-result-object v0

    .line 2090
    :cond_0
    :goto_0
    return-object v0

    .line 2083
    :cond_1
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v1}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v2

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/zendesk/api/model/ticket/forms/TicketForms;->getTicketFormByTicketFormId(J)Lcom/zendesk/api/model/ticket/forms/TicketForm;

    move-result-object v0

    goto :goto_0
.end method

.method private static getId(Lorg/json/JSONObject;)Ljava/lang/Long;
    .locals 1
    .parameter "json"

    .prologue
    .line 700
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/zendesk/api/model/ticket/Ticket;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getTicketFieldEntriesForTicketForm(Lcom/zendesk/api/model/ticket/forms/TicketForm;)Ljava/util/List;
    .locals 11
    .parameter "form"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ticket/forms/TicketForm;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 2047
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/zendesk/api/model/ticket/Ticket;->allTicketFieldEntries:Ljava/util/List;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2049
    .local v4, listOfTFEs:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;>;"
    if-eqz p1, :cond_3

    .line 2050
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2051
    .local v5, listOfTicketFieldEntries:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;>;"
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->getTicketFieldIds()Ljava/util/List;

    move-result-object v1

    .line 2054
    .local v1, filterInclude:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 2057
    .local v6, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/account/TicketFieldType;->isSystemField()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v7

    sget-object v8, Lcom/zendesk/api/model/account/TicketFieldType;->PRIORITY:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v7, v8, :cond_1

    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v7

    sget-object v8, Lcom/zendesk/api/model/account/TicketFieldType;->TYPE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v7, v8, :cond_1

    .line 2061
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2064
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2065
    .local v0, filterId:Ljava/lang/Long;
    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/account/TicketField;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 2067
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #filterId:Ljava/lang/Long;
    .end local v1           #filterInclude:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #listOfTicketFieldEntries:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;>;"
    .end local v6           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    :cond_3
    move-object v5, v4

    .line 2076
    :cond_4
    return-object v5
.end method

.method public static getTicketFromJson(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 3
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 714
    const/4 v0, 0x0

    .line 715
    .local v0, t:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-interface {p0}, Lcom/zendesk/api/model/BaseModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 716
    invoke-interface {p0}, Lcom/zendesk/api/model/BaseModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v1

    invoke-static {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getId(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    .line 717
    invoke-direct {v0, p1}, Lcom/zendesk/api/model/ticket/Ticket;->update(Lorg/json/JSONObject;)V

    .line 721
    :goto_0
    return-object v0

    .line 719
    :cond_0
    new-instance v0, Lcom/zendesk/api/model/ticket/Ticket;

    .end local v0           #t:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-direct {v0, p0, p1}, Lcom/zendesk/api/model/ticket/Ticket;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V

    .restart local v0       #t:Lcom/zendesk/api/model/ticket/Ticket;
    goto :goto_0
.end method

.method private orderedListTicketProperties()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;>;"
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->requesterId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->collaborators:Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->description:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->subject:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->subject:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_0
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->status:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketType:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v1, :cond_1

    .line 665
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketType:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->dueDate:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_1
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->priority:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v1, :cond_2

    .line 669
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->priority:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_2
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v1, :cond_3

    .line 672
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_3
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->groupId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v1, :cond_4

    .line 675
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->groupId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_4
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->assigneeId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v1, :cond_5

    .line 678
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->assigneeId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_5
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->tags:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v1, :cond_6

    .line 681
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->tags:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_6
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemLinkedToIncidentTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v1, :cond_7

    .line 684
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemLinkedToIncidentTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_7
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidentsForProblemTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v1, :cond_8

    .line 687
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidentsForProblemTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_8
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFieldEntries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 691
    return-object v0
.end method

.method private setupTicketFieldList()V
    .locals 6

    .prologue
    .line 419
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFieldEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 420
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->allTicketFieldEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 422
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v3}, Lcom/zendesk/api/model/BaseModel;->getTicketFields()Lcom/zendesk/api/model/account/TicketFields;

    move-result-object v1

    .line 424
    .local v1, md:Lcom/zendesk/api/model/account/TicketFields;
    new-instance v3, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getAssignee()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->assigneeId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 425
    new-instance v3, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getRequester()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->requesterId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 426
    new-instance v3, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getGroup()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->groupId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 427
    new-instance v3, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getDescription()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->description:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 429
    new-instance v3, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getStatus()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->status:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 430
    new-instance v3, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getTags()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->tags:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 431
    new-instance v3, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getCcs()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->collaborators:Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    .line 433
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getPriority()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getPriority()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->isActive()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    new-instance v3, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getPriority()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->priority:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 436
    :cond_0
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getTicketType()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getTicketType()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->isActive()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    new-instance v3, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getTicketType()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketType:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 439
    new-instance v3, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getDueDate()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->dueDate:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 441
    :cond_1
    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getSubject()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getSubject()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->isActive()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    new-instance v3, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v4, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketFields;->getSubject()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->subject:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 444
    :cond_2
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v3}, Lcom/zendesk/api/model/BaseModel;->getTicketFields()Lcom/zendesk/api/model/account/TicketFields;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketFields;->getCustomTicketFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/account/TicketField;

    .line 446
    .local v2, tf:Lcom/zendesk/api/model/account/TicketField;
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFieldEntries:Ljava/util/List;

    new-instance v4, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v5, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v4, v5, v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/account/TicketField;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 448
    .end local v2           #tf:Lcom/zendesk/api/model/account/TicketField;
    :cond_3
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v3}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 449
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFormId:Ljava/lang/Long;

    invoke-direct {p0, v3}, Lcom/zendesk/api/model/ticket/Ticket;->buildTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 452
    :cond_4
    invoke-direct {p0}, Lcom/zendesk/api/model/ticket/Ticket;->orderedListTicketProperties()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->allTicketFieldEntries:Ljava/util/List;

    .line 453
    return-void
.end method

.method private declared-synchronized update(Lorg/json/JSONObject;)V
    .locals 22
    .parameter "json"

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    const-string v18, "users"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 284
    .local v15, users:Lorg/json/JSONArray;
    if-eqz v15, :cond_0

    .line 285
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_0

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    move-object/from16 v18, v0

    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/zendesk/api/model/users/User;->getUserFromJSON(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/users/User;

    .line 285
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 290
    .end local v7           #i:I
    :cond_0
    const-string v18, "ticket"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 291
    const-string v18, "ticket"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 294
    :cond_1
    const-string v18, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->id:Ljava/lang/Long;

    .line 295
    const-string v18, "updated_at"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 296
    const-string v18, "external_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->externalId:Ljava/lang/String;

    .line 297
    const-string v18, "submitter_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->submitterId:Ljava/lang/Long;

    .line 298
    const-string v18, "problem_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->problemId:Ljava/lang/Long;

    .line 299
    const-string v18, "organization_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->organizationId:Ljava/lang/Long;

    .line 300
    const-string v18, "forum_topic_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->forumTopicId:Ljava/lang/Long;

    .line 301
    const-string v18, "recipient"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->recipient:Ljava/lang/String;

    .line 302
    const-string v18, "has_incidents"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->hasIncidents:Ljava/lang/Boolean;

    .line 303
    const-string v18, "created_at"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 304
    const-string v18, "updated_at"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 305
    const-string v18, "ticket_form_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->ticketFormId:Ljava/lang/Long;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 307
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/zendesk/api/model/ticket/forms/TicketForms;->count()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_2

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/zendesk/api/model/BaseModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/zendesk/api/model/ticket/forms/TicketForms;->getListItems()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zendesk/api/model/ticket/forms/TicketForm;

    .line 310
    .local v6, form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFormId:Ljava/lang/Long;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFormId:Ljava/lang/Long;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->getId()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_e

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 321
    .end local v6           #form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    .end local v7           #i:I
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFormId:Ljava/lang/Long;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 324
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->assigneeId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->assigneeId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    const-string v19, "assignee_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 327
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->requesterId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->requesterId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    const-string v19, "requester_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 330
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->groupId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->groupId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    const-string v19, "group_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 333
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->status:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->status:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    const-string v19, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 336
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->description:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->description:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    const-string v19, "description"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 339
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->priority:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->priority:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    const-string v19, "priority"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 342
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->ticketType:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->ticketType:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    const-string v19, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->dueDate:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    const-string v19, "due_at"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 346
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->subject:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->subject:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    const-string v19, "subject"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 349
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->problemLinkedToIncidentTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->problemLinkedToIncidentTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->problemId:Ljava/lang/Long;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 352
    :cond_c
    const-string v18, "tags"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 353
    .local v13, tagsArray:Lorg/json/JSONArray;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v12, sb:Ljava/lang/StringBuilder;
    if-eqz v13, :cond_10

    .line 355
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_10

    .line 356
    invoke-virtual {v13, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    .line 357
    .local v10, s:Ljava/lang/String;
    if-eqz v10, :cond_d

    .line 358
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 313
    .end local v10           #s:Ljava/lang/String;
    .end local v12           #sb:Ljava/lang/StringBuilder;
    .end local v13           #tagsArray:Lorg/json/JSONArray;
    .restart local v6       #form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFormId:Ljava/lang/Long;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_f

    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->isDefault()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->isActive()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 316
    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->getId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->ticketFormId:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 282
    .end local v6           #form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    .end local v7           #i:I
    .end local v15           #users:Lorg/json/JSONArray;
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 307
    .restart local v6       #form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    .restart local v7       #i:I
    .restart local v15       #users:Lorg/json/JSONArray;
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 362
    .end local v6           #form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    .end local v7           #i:I
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    .restart local v13       #tagsArray:Lorg/json/JSONArray;
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->tags:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 364
    const-string v18, "collaborator_ids"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 365
    .local v3, ccs:Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v2, ccList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/users/User;>;"
    if-eqz v3, :cond_11

    .line 367
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_11

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    move-object/from16 v18, v0

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/zendesk/api/model/users/User;->getUser(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 371
    .end local v7           #i:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->collaborators:Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->setValue(Ljava/util/List;)V

    .line 373
    const-string v18, "via"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 374
    .local v17, viaJSON:Lorg/json/JSONObject;
    if-eqz v17, :cond_12

    .line 375
    new-instance v18, Lcom/zendesk/api/model/shared/Via;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/zendesk/api/model/shared/Via;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->via:Lcom/zendesk/api/model/shared/Via;

    .line 378
    :cond_12
    const-string v18, "satisfaction_rating"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 379
    .local v11, satRating:Lorg/json/JSONObject;
    if-eqz v11, :cond_13

    .line 380
    new-instance v18, Lcom/zendesk/api/model/ticket/SatisfactionRating;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Lcom/zendesk/api/model/ticket/SatisfactionRating;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->satisfactionRating:Lcom/zendesk/api/model/ticket/SatisfactionRating;

    .line 383
    :cond_13
    const-string v18, "last_comment"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 384
    .local v8, lastCommentJSON:Lorg/json/JSONObject;
    if-eqz v8, :cond_14

    .line 385
    new-instance v18, Lcom/zendesk/api/model/ticket/LastComment;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Lcom/zendesk/api/model/ticket/LastComment;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/model/ticket/Ticket;->lastComment:Lcom/zendesk/api/model/ticket/LastComment;

    .line 388
    :cond_14
    const-string v18, "permissions"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 389
    .local v9, perms:Lorg/json/JSONObject;
    if-eqz v9, :cond_15

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/model/ticket/Ticket;->permissions:Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/zendesk/api/model/ticket/TicketPermissions;->update(Lorg/json/JSONObject;)V

    .line 393
    :cond_15
    const-string v18, "custom_fields"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 394
    .local v4, entriesArray:Lorg/json/JSONArray;
    if-eqz v4, :cond_19

    .line 395
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_19

    .line 396
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 397
    .local v5, entryJson:Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketFieldId(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->getCustomTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v14

    .line 399
    .local v14, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    if-eqz v14, :cond_17

    .line 400
    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lcom/zendesk/api/model/ticket/Ticket;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 402
    .local v16, value:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v18

    sget-object v19, Lcom/zendesk/api/model/account/TicketFieldType;->CHECKBOX:Lcom/zendesk/api/model/account/TicketFieldType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 404
    if-eqz v16, :cond_16

    .line 405
    const-string v18, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 406
    const-string v16, "1"

    .line 412
    :cond_16
    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    .line 395
    .end local v16           #value:Ljava/lang/String;
    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 407
    .restart local v16       #value:Ljava/lang/String;
    :cond_18
    const-string v18, "false"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 408
    const-string v16, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 416
    .end local v5           #entryJson:Lorg/json/JSONObject;
    .end local v7           #i:I
    .end local v14           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    .end local v16           #value:Ljava/lang/String;
    :cond_19
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public addCustomTicketFieldEntry(Lcom/zendesk/api/model/ticket/TicketFieldEntry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFieldEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFieldEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_0
    return-void
.end method

.method public applyMacro(Ljava/lang/Long;)V
    .locals 1
    .parameter "macroId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 1327
    new-instance v0, Lcom/zendesk/api/model/macros/MacroResult;

    invoke-direct {v0, p1, p0}, Lcom/zendesk/api/model/macros/MacroResult;-><init>(Ljava/lang/Long;Lcom/zendesk/api/model/ticket/Ticket;)V

    invoke-virtual {v0}, Lcom/zendesk/api/model/macros/MacroResult;->refresh()V

    .line 1328
    return-void
.end method

.method public applyMacro(Ljava/lang/Long;Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 1
    .parameter "macroId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/macros/MacroResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1340
    .local p2, handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<Lcom/zendesk/api/model/macros/MacroResult;>;"
    new-instance v0, Lcom/zendesk/api/model/macros/MacroResult;

    invoke-direct {v0, p1, p0}, Lcom/zendesk/api/model/macros/MacroResult;-><init>(Ljava/lang/Long;Lcom/zendesk/api/model/ticket/Ticket;)V

    invoke-virtual {v0, p2}, Lcom/zendesk/api/model/macros/MacroResult;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 1341
    return-void
.end method

.method public declared-synchronized commit(Lcom/zendesk/api/http/ProgressMonitor;)V
    .locals 13
    .parameter "progressMonitor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 911
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/zendesk/api/model/ticket/Ticket;->id:Ljava/lang/Long;

    sget-object v11, Lcom/zendesk/api/model/cache/TicketCache;->NEW_TICKET_ID:Ljava/lang/Long;

    if-ne v10, v11, :cond_0

    const/4 v5, 0x1

    .line 912
    .local v5, isNewTicket:Z
    :cond_0
    invoke-virtual {p0}, Lcom/zendesk/api/model/ticket/Ticket;->getTemporaryComment()Lcom/zendesk/api/model/ticket/audits/Comment;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zendesk/api/model/ticket/audits/Comment;->getAttachments()Ljava/util/List;

    move-result-object v1

    .line 914
    .local v1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/shared/Attachment;>;"
    if-eqz v1, :cond_3

    .line 915
    const/4 v8, 0x0

    .line 916
    .local v8, token:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/shared/Attachment;

    .line 917
    .local v0, a:Lcom/zendesk/api/model/shared/Attachment;
    if-eqz v8, :cond_2

    .line 918
    invoke-virtual {v0, v8}, Lcom/zendesk/api/model/shared/Attachment;->setToken(Ljava/lang/String;)V

    .line 921
    :cond_2
    invoke-virtual {v0, p1}, Lcom/zendesk/api/model/shared/Attachment;->uploadSync(Lcom/zendesk/api/http/ProgressMonitor;)V

    .line 922
    if-nez v8, :cond_1

    .line 923
    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/Attachment;->getToken()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 928
    .end local v0           #a:Lcom/zendesk/api/model/shared/Attachment;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #token:Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_4

    .line 929
    sget-object v10, Lcom/zendesk/api/http/ProgressMonitor$ProgressType;->INDETERMINATE:Lcom/zendesk/api/http/ProgressMonitor$ProgressType;

    invoke-interface {p1, v10}, Lcom/zendesk/api/http/ProgressMonitor;->setProgressType(Lcom/zendesk/api/http/ProgressMonitor$ProgressType;)V

    .line 931
    :cond_4
    const/4 v6, 0x0

    .line 933
    .local v6, response:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 934
    new-instance v3, Lcom/zendesk/api/requester/TicketCreateRequester;

    invoke-direct {p0}, Lcom/zendesk/api/model/ticket/Ticket;->createNewTicketJSON()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/zendesk/api/requester/TicketCreateRequester;-><init>(Ljava/lang/String;)V

    .line 936
    .local v3, createReq:Lcom/zendesk/api/requester/TicketCreateRequester;
    invoke-virtual {v3}, Lcom/zendesk/api/requester/TicketCreateRequester;->execute()V

    .line 937
    invoke-virtual {v3}, Lcom/zendesk/api/requester/TicketCreateRequester;->getResponseString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/zendesk/api/model/ticket/Ticket;->parseResponse(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v3}, Lcom/zendesk/api/requester/TicketCreateRequester;->getResponseString()Ljava/lang/String;

    move-result-object v6

    .line 947
    .end local v3           #createReq:Lcom/zendesk/api/requester/TicketCreateRequester;
    :goto_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "audit"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 949
    .local v2, audit:Lorg/json/JSONObject;
    if-eqz v2, :cond_5

    .line 950
    new-instance v7, Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    iget-object v10, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v7, v10, v2}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V

    .line 951
    .local v7, ta:Lcom/zendesk/api/model/ticket/audits/TicketAudit;
    iget-object v10, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v10}, Lcom/zendesk/api/model/BaseModel;->getAccountConfig()Lcom/zendesk/api/model/account/AccountConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zendesk/api/model/account/AccountConfig;->getTicketsListNewestCommentsFirst()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 953
    iget-object v10, p0, Lcom/zendesk/api/model/ticket/Ticket;->audits:Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    invoke-virtual {v10}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->getSourceList()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 959
    .end local v7           #ta:Lcom/zendesk/api/model/ticket/audits/TicketAudit;
    :cond_5
    :goto_2
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/zendesk/api/model/ticket/Ticket;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    .line 960
    invoke-virtual {p0}, Lcom/zendesk/api/model/ticket/Ticket;->getTemporaryComment()Lcom/zendesk/api/model/ticket/audits/Comment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    monitor-exit p0

    return-void

    .line 940
    .end local v2           #audit:Lorg/json/JSONObject;
    :cond_6
    :try_start_1
    new-instance v9, Lcom/zendesk/api/requester/TicketUpdateRequester;

    iget-object v10, p0, Lcom/zendesk/api/model/ticket/Ticket;->id:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0}, Lcom/zendesk/api/model/ticket/Ticket;->createUpdateJSON()Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/zendesk/api/requester/TicketUpdateRequester;-><init>(JLjava/lang/String;)V

    .line 942
    .local v9, updateReq:Lcom/zendesk/api/requester/TicketUpdateRequester;
    invoke-virtual {v9}, Lcom/zendesk/api/requester/TicketUpdateRequester;->execute()V

    .line 943
    invoke-virtual {v9}, Lcom/zendesk/api/requester/TicketUpdateRequester;->getResponseString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/zendesk/api/model/ticket/Ticket;->parseResponse(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v9}, Lcom/zendesk/api/requester/TicketUpdateRequester;->getResponseString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 955
    .end local v9           #updateReq:Lcom/zendesk/api/requester/TicketUpdateRequester;
    .restart local v2       #audit:Lorg/json/JSONObject;
    .restart local v7       #ta:Lcom/zendesk/api/model/ticket/audits/TicketAudit;
    :cond_7
    iget-object v10, p0, Lcom/zendesk/api/model/ticket/Ticket;->audits:Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    invoke-virtual {v10}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->getSourceList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 911
    .end local v1           #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/shared/Attachment;>;"
    .end local v2           #audit:Lorg/json/JSONObject;
    .end local v5           #isNewTicket:Z
    .end local v6           #response:Ljava/lang/String;
    .end local v7           #ta:Lcom/zendesk/api/model/ticket/audits/TicketAudit;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public declared-synchronized commit(Lcom/zendesk/api/model/ResponseHandler;Lcom/zendesk/api/http/ProgressMonitor;)V
    .locals 1
    .parameter
    .parameter "progressMonitor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/ticket/Ticket;",
            ">;",
            "Lcom/zendesk/api/http/ProgressMonitor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 880
    .local p1, handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<Lcom/zendesk/api/model/ticket/Ticket;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketUpdateHandler:Lcom/zendesk/api/model/ResponseHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 895
    :goto_0
    monitor-exit p0

    return-void

    .line 882
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketUpdateHandler:Lcom/zendesk/api/model/ResponseHandler;

    .line 883
    new-instance v0, Lcom/zendesk/api/model/ticket/Ticket$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/zendesk/api/model/ticket/Ticket$1;-><init>(Lcom/zendesk/api/model/ticket/Ticket;Lcom/zendesk/api/http/ProgressMonitor;Lcom/zendesk/api/model/ResponseHandler;)V

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket$1;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 1231
    new-instance v0, Lcom/zendesk/api/requester/TicketDeleteRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->id:Ljava/lang/Long;

    invoke-direct {v0, v1}, Lcom/zendesk/api/requester/TicketDeleteRequester;-><init>(Ljava/lang/Long;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->execute(Lcom/zendesk/api/http/Request;Lcom/zendesk/api/model/ZDModelObject$ResponseParser;)V

    .line 1232
    invoke-direct {p0}, Lcom/zendesk/api/model/ticket/Ticket;->deleteLocalTicketRefs()V

    .line 1233
    return-void
.end method

.method public delete(Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/ticket/Ticket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1207
    .local p1, handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<Lcom/zendesk/api/model/ticket/Ticket;>;"
    new-instance v0, Lcom/zendesk/api/requester/TicketDeleteRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->id:Ljava/lang/Long;

    invoke-direct {v0, v1}, Lcom/zendesk/api/requester/TicketDeleteRequester;-><init>(Ljava/lang/Long;)V

    const-string v1, "ticket-delete"

    new-instance v2, Lcom/zendesk/api/model/ticket/Ticket$2;

    invoke-direct {v2, p0, p1}, Lcom/zendesk/api/model/ticket/Ticket$2;-><init>(Lcom/zendesk/api/model/ticket/Ticket;Lcom/zendesk/api/model/ResponseHandler;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zendesk/api/model/ticket/Ticket;->execute(Lcom/zendesk/api/http/Request;Ljava/lang/String;Lcom/zendesk/api/model/ResponseHandler;Lcom/zendesk/api/model/ZDModelObject$ResponseParser;)V

    .line 1221
    return-void
.end method

.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 3

    .prologue
    .line 272
    new-instance v0, Lcom/zendesk/api/requester/TicketRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/requester/TicketRequester;-><init>(J)V

    return-object v0
.end method

.method public getAllTicketFieldEntries()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 579
    const/4 v1, 0x0

    .line 581
    .local v1, listOfEntries:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;>;"
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidentsForProblemTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-nez v2, :cond_0

    .line 582
    invoke-direct {p0}, Lcom/zendesk/api/model/ticket/Ticket;->buildIncidentsForProblemTicketTicketField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidentsForProblemTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 584
    :cond_0
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemLinkedToIncidentTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-nez v2, :cond_1

    .line 585
    invoke-direct {p0}, Lcom/zendesk/api/model/ticket/Ticket;->buildProblemLinkedToIncidentTicketTicketField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemLinkedToIncidentTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 588
    :cond_1
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->allTicketFieldEntries:Ljava/util/List;

    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidentsForProblemTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 589
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->allTicketFieldEntries:Ljava/util/List;

    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidentsForProblemTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->allTicketFieldEntries:Ljava/util/List;

    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemLinkedToIncidentTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 595
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->allTicketFieldEntries:Ljava/util/List;

    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemLinkedToIncidentTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/zendesk/api/model/ticket/Ticket;->getCurrentTicketForm()Lcom/zendesk/api/model/ticket/forms/TicketForm;

    move-result-object v0

    .line 602
    .local v0, form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    if-eqz v0, :cond_6

    .line 603
    invoke-direct {p0, v0}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketFieldEntriesForTicketForm(Lcom/zendesk/api/model/ticket/forms/TicketForm;)Ljava/util/List;

    move-result-object v1

    .line 610
    :goto_2
    invoke-direct {p0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->filterTicketFieldEntryList(Ljava/util/List;)V

    .line 612
    return-object v1

    .line 590
    .end local v0           #form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    :cond_4
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidentsForProblemTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v2

    if-nez v2, :cond_2

    .line 591
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidentsForProblemTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidents:Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->getIncidentTickets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 596
    :cond_5
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemLinkedToIncidentTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v2

    if-nez v2, :cond_3

    .line 597
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemLinkedToIncidentTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 605
    .restart local v0       #form:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #listOfEntries:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;>;"
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->allTicketFieldEntries:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1       #listOfEntries:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;>;"
    goto :goto_2
.end method

.method public getAssignee()Lcom/zendesk/api/model/users/User;
    .locals 2

    .prologue
    .line 1534
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->assigneeId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v1, v0}, Lcom/zendesk/api/model/users/User;->getUser(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v0

    return-object v0
.end method

.method public getAssigneeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->assigneeId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    return-object v0
.end method

.method public getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->audits:Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    return-object v0
.end method

.method public getCollaborators()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2021
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->collaborators:Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCollaboratorsField()Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->collaborators:Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    return-object v0
.end method

.method public getComment()Lcom/zendesk/api/model/ticket/audits/Comment;
    .locals 1

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    return-object v0
.end method

.method public getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getCustomTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 7
    .parameter "ticketFieldId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1380
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFieldEntries:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1381
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFieldEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 1383
    .local v2, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 1391
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .line 1385
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1386
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/zendesk/api/model/ticket/Ticket;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error locating custom field for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 1391
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->description:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->description:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    return-object v0
.end method

.method public getDueDate()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->dueDate:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->dueDate:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/shared/ZDDate;

    .line 1936
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDueDateField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Lcom/zendesk/api/model/shared/ZDDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->dueDate:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->externalId:Ljava/lang/String;

    return-object v0
.end method

.method public getForumTopicId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->forumTopicId:Ljava/lang/Long;

    return-object v0
.end method

.method public getGroup()Lcom/zendesk/api/model/users/Group;
    .locals 2

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v0}, Lcom/zendesk/api/model/BaseModel;->getGroupCache()Lcom/zendesk/api/model/cache/GroupCache;

    move-result-object v1

    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->groupId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v1, v0}, Lcom/zendesk/api/model/cache/GroupCache;->getGroup(Ljava/lang/Long;)Lcom/zendesk/api/model/users/Group;

    move-result-object v0

    return-object v0
.end method

.method public getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->groupId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIncidentTickets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/Ticket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidents:Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidents:Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->getIncidentTickets()Ljava/util/List;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getIncidentsForProblemTicketTicketField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidentsForProblemTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    return-object v0
.end method

.method public getLastComment()Lcom/zendesk/api/model/ticket/LastComment;
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->lastComment:Lcom/zendesk/api/model/ticket/LastComment;

    return-object v0
.end method

.method public getOrganizationId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->organizationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;
    .locals 1

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->permissions:Lcom/zendesk/api/model/ticket/TicketPermissions;

    return-object v0
.end method

.method public getPriority()Lcom/zendesk/api/model/account/Priority;
    .locals 1

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->priority:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->priority:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/zendesk/api/model/account/Priority;->get(Ljava/lang/String;)Lcom/zendesk/api/model/account/Priority;

    move-result-object v0

    .line 1577
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPriorityField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->priority:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    return-object v0
.end method

.method public getProblemId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemId:Ljava/lang/Long;

    return-object v0
.end method

.method public getProblemIncidentTickets()Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;
    .locals 1

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidents:Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    return-object v0
.end method

.method public getProblemLinkedToIncidentTicketTicketField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemLinkedToIncidentTicketTicketField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->recipient:Ljava/lang/String;

    return-object v0
.end method

.method public getRequester()Lcom/zendesk/api/model/users/User;
    .locals 2

    .prologue
    .line 1808
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->requesterId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v1, v0}, Lcom/zendesk/api/model/users/User;->getUser(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v0

    return-object v0
.end method

.method public getRequesterField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->requesterId:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    return-object v0
.end method

.method public getSatisfactionRating()Lcom/zendesk/api/model/ticket/SatisfactionRating;
    .locals 1

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->satisfactionRating:Lcom/zendesk/api/model/ticket/SatisfactionRating;

    return-object v0
.end method

.method public getStatus()Lcom/zendesk/api/model/account/Status;
    .locals 1

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->status:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/zendesk/api/model/account/Status;->get(Ljava/lang/String;)Lcom/zendesk/api/model/account/Status;

    move-result-object v0

    return-object v0
.end method

.method public getStatusField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->status:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->subject:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->subject:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1685
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubjectField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->subject:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    return-object v0
.end method

.method public getSubmitterId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->submitterId:Ljava/lang/Long;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->tags:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTagsField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->tags:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    return-object v0
.end method

.method public getTemporaryComment()Lcom/zendesk/api/model/ticket/audits/Comment;
    .locals 4

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    if-nez v0, :cond_0

    .line 1475
    new-instance v0, Lcom/zendesk/api/model/ticket/audits/Comment;

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    new-instance v2, Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v2, v3}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/model/ticket/audits/Comment;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    .line 1476
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/Comment;->getParentAudit()Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->via:Lcom/zendesk/api/model/shared/Via;

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->setVia(Lcom/zendesk/api/model/shared/Via;)V

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;

    return-object v0
.end method

.method public getTicketFieldEntries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2041
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFieldEntries:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 7
    .parameter "ticketFieldEntryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1357
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->allTicketFieldEntries:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1358
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->allTicketFieldEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 1360
    .local v2, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 1367
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    :goto_1
    return-object v2

    .line 1362
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    :catch_0
    move-exception v0

    .line 1363
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1367
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getTicketFormField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketForm:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    return-object v0
.end method

.method public getTicketType()Lcom/zendesk/api/model/account/TicketType;
    .locals 1

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketType:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketType:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/zendesk/api/model/account/TicketType;->get(Ljava/lang/String;)Lcom/zendesk/api/model/account/TicketType;

    move-result-object v0

    .line 1642
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketType:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    return-object v0
.end method

.method public getUpdatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getVia()Lcom/zendesk/api/model/shared/Via;
    .locals 1

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->via:Lcom/zendesk/api/model/shared/Via;

    return-object v0
.end method

.method public hasBeenEdited()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1412
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->allTicketFieldEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 1413
    .local v1, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1421
    .end local v1           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    :cond_1
    :goto_0
    return v2

    .line 1417
    :cond_2
    invoke-virtual {p0}, Lcom/zendesk/api/model/ticket/Ticket;->getTemporaryComment()Lcom/zendesk/api/model/ticket/audits/Comment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/audits/Comment;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zendesk/api/model/ticket/Ticket;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1421
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasCommentsBeenEdited()Z
    .locals 1

    .prologue
    .line 1446
    invoke-virtual {p0}, Lcom/zendesk/api/model/ticket/Ticket;->getTemporaryComment()Lcom/zendesk/api/model/ticket/audits/Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/Comment;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zendesk/api/model/ticket/Ticket;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1447
    const/4 v0, 0x1

    .line 1450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIncidents()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->hasIncidents:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasPropertiesBeenEdited()Z
    .locals 3

    .prologue
    .line 1431
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->allTicketFieldEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 1432
    .local v1, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1433
    const/4 v2, 0x1

    .line 1436
    .end local v1           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBookmarked()Z
    .locals 2

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v0}, Lcom/zendesk/api/model/BaseModel;->getBookmarks()Lcom/zendesk/api/model/views/Bookmarks;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/views/Bookmarks;->getBookmark(Ljava/lang/Long;)Lcom/zendesk/api/model/views/Bookmark;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullRecord()Z
    .locals 1

    .prologue
    .line 1401
    iget-boolean v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->shouldRefresh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShouldRefresh()Z
    .locals 1

    .prologue
    .line 2120
    iget-boolean v0, p0, Lcom/zendesk/api/model/ticket/Ticket;->shouldRefresh:Z

    return v0
.end method

.method public markAsSpam()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 1242
    new-instance v0, Lcom/zendesk/api/requester/MarkTicketSpamRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket;->id:Ljava/lang/Long;

    invoke-direct {v0, v1}, Lcom/zendesk/api/requester/MarkTicketSpamRequester;-><init>(Ljava/lang/Long;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->execute(Lcom/zendesk/api/http/Request;Lcom/zendesk/api/model/ZDModelObject$ResponseParser;)V

    .line 1243
    invoke-direct {p0}, Lcom/zendesk/api/model/ticket/Ticket;->deleteLocalTicketRefs()V

    .line 1244
    return-void
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 1
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zendesk/api/model/ticket/Ticket;->update(Lorg/json/JSONObject;)V

    .line 278
    return-void
.end method

.method public revertEdits()V
    .locals 4

    .prologue
    .line 261
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket;->allTicketFieldEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 262
    .local v1, field:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 265
    .end local v1           #field:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    :cond_0
    invoke-virtual {p0}, Lcom/zendesk/api/model/ticket/Ticket;->getTemporaryComment()Lcom/zendesk/api/model/ticket/audits/Comment;

    move-result-object v0

    .line 266
    .local v0, c:Lcom/zendesk/api/model/ticket/audits/Comment;
    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/Comment;->getAttachments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 267
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/zendesk/api/model/ticket/audits/Comment;->setBody(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "createdAt"

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 1525
    return-void
.end method

.method public setExternalId(Ljava/lang/String;)V
    .locals 0
    .parameter "externalId"

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->externalId:Ljava/lang/String;

    .line 1630
    return-void
.end method

.method public setForumTopicId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1850
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->forumTopicId:Ljava/lang/Long;

    .line 1851
    return-void
.end method

.method public setHasIncidents(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "hasIncidents"

    .prologue
    .line 1923
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->hasIncidents:Ljava/lang/Boolean;

    .line 1924
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1503
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->id:Ljava/lang/Long;

    .line 1504
    return-void
.end method

.method public setIncidentTickets(Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;)V
    .locals 0
    .parameter "incidents"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->incidents:Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    .line 251
    return-void
.end method

.method public setLastComment(Lcom/zendesk/api/model/ticket/LastComment;)V
    .locals 0
    .parameter "lastComment"

    .prologue
    .line 1839
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->lastComment:Lcom/zendesk/api/model/ticket/LastComment;

    .line 1840
    return-void
.end method

.method public setOrganizationId(Ljava/lang/Long;)V
    .locals 0
    .parameter "organizationId"

    .prologue
    .line 1881
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->organizationId:Ljava/lang/Long;

    .line 1882
    return-void
.end method

.method public setPermissions(Lcom/zendesk/api/model/ticket/TicketPermissions;)V
    .locals 0
    .parameter "permissions"

    .prologue
    .line 1990
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->permissions:Lcom/zendesk/api/model/ticket/TicketPermissions;

    .line 1991
    return-void
.end method

.method public setProblemId(Ljava/lang/Long;)V
    .locals 0
    .parameter "problemId"

    .prologue
    .line 1798
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->problemId:Ljava/lang/Long;

    .line 1799
    return-void
.end method

.method public setRecipient(Ljava/lang/String;)V
    .locals 0
    .parameter "recipient"

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->recipient:Ljava/lang/String;

    .line 1903
    return-void
.end method

.method public setSatisfactionRating(Lcom/zendesk/api/model/ticket/SatisfactionRating;)V
    .locals 0
    .parameter "satisfactionRating"

    .prologue
    .line 2011
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->satisfactionRating:Lcom/zendesk/api/model/ticket/SatisfactionRating;

    .line 2012
    return-void
.end method

.method public setShouldRefresh(Z)V
    .locals 0
    .parameter "shouldRefresh"

    .prologue
    .line 2131
    iput-boolean p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->shouldRefresh:Z

    .line 2132
    return-void
.end method

.method public setSubmitterId(Ljava/lang/Long;)V
    .locals 0
    .parameter "submitterId"

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->submitterId:Ljava/lang/Long;

    .line 1738
    return-void
.end method

.method public setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "updatedAt"

    .prologue
    .line 1608
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 1609
    return-void
.end method

.method public setVia(Lcom/zendesk/api/model/shared/Via;)V
    .locals 0
    .parameter "via"

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket;->via:Lcom/zendesk/api/model/shared/Via;

    .line 1717
    return-void
.end method

.method public updateCustomTicketFieldEntry(Lcom/zendesk/api/model/ticket/TicketFieldEntry;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFieldEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFieldEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 563
    .local v1, tempTFE:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/account/TicketField;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 564
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFieldEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 565
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/Ticket;->ticketFieldEntries:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 569
    .end local v1           #tempTFE:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 561
    .restart local v1       #tempTFE:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
