.class public Lcom/android/internal/util/ButtonHelper$Action;
.super Ljava/lang/Object;
.source "ButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field public args:Ljava/lang/Object;

.field public type:Lcom/android/internal/util/ButtonHelper$ActionType;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/ButtonHelper$ActionType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/android/internal/util/ButtonHelper$ActionType;->valueOf(Ljava/lang/String;)Lcom/android/internal/util/ButtonHelper$ActionType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    .line 41
    return-void
.end method


# virtual methods
.method public argsToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->CustomApp:Lcom/android/internal/util/ButtonHelper$ActionType;

    if-eq v0, v1, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/ButtonHelper$Action;->args:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasArgs()Z
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->CustomApp:Lcom/android/internal/util/ButtonHelper$ActionType;

    if-ne v0, v1, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseArgs(Ljava/lang/String;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    sget-object v2, Lcom/android/internal/util/ButtonHelper$ActionType;->CustomApp:Lcom/android/internal/util/ButtonHelper$ActionType;

    if-ne v1, v2, :cond_0

    .line 58
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/ButtonHelper$Action;->args:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0}, Lcom/android/internal/util/ButtonHelper$ActionType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
