.class Lcom/android/commands/pm/Pm$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/Pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field finished:Z

.field result:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1316
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "succeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1322
    monitor-enter p0

    .line 1323
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/commands/pm/Pm$ClearCacheObserver;->finished:Z

    .line 1324
    iput-boolean p2, p0, Lcom/android/commands/pm/Pm$ClearCacheObserver;->result:Z

    .line 1325
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1326
    monitor-exit p0

    .line 1327
    return-void

    .line 1326
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
