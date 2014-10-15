.class Lcom/android/server/BackupManagerService$ObserveBaiduTransport$1;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BackupManagerService$ObserveBaiduTransport;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService$ObserveBaiduTransport;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService$ObserveBaiduTransport;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport$1;->this$0:Lcom/android/server/BackupManagerService$ObserveBaiduTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport$1;->this$0:Lcom/android/server/BackupManagerService$ObserveBaiduTransport;

    iget-object v0, v0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;->mService:Lcom/android/server/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/BackupManagerService$BaiduBackupInjector;->registerBaiduTransport(Lcom/android/server/BackupManagerService;)V

    return-void
.end method
