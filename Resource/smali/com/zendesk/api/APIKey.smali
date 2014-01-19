.class public interface abstract annotation Lcom/zendesk/api/APIKey;
.super Ljava/lang/Object;
.source "APIKey.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/zendesk/api/APIKey;
        altType = Lcom/zendesk/api/APIKey;
        listOf = Lcom/zendesk/api/APIKey;
        required = .enum Lcom/zendesk/api/APIKeyRequired;->ALWAYS:Lcom/zendesk/api/APIKeyRequired;
        type = Lcom/zendesk/api/APIKey;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->IF_KEY:Lcom/zendesk/api/APIValueRequired;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract altType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract listOf()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract path()Ljava/lang/String;
.end method

.method public abstract required()Lcom/zendesk/api/APIKeyRequired;
.end method

.method public abstract type()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract valueRequired()Lcom/zendesk/api/APIValueRequired;
.end method
