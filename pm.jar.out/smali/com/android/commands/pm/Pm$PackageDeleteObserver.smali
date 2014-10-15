.class Lcom/android/commands/pm/Pm$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/Pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field finished:Z

.field result:Z

.field final synthetic this$0:Lcom/android/commands/pm/Pm;


# direct methods
.method constructor <init>(Lcom/android/commands/pm/Pm;)V
    .locals 0
    .parameter

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/android/commands/pm/Pm$PackageDeleteObserver;->this$0:Lcom/android/commands/pm/Pm;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    const/4 v0, 0x1

    .line 1063
    monitor-enter p0

    .line 1064
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/commands/pm/Pm$PackageDeleteObserver;->finished:Z

    .line 1065
    if-ne p2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/commands/pm/Pm$PackageDeleteObserver;->result:Z

    .line 1066
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1067
    monitor-exit p0

    .line 1068
    return-void

    .line 1065
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1067
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
