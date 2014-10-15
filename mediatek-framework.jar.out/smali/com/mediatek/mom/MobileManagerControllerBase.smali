.class public abstract Lcom/mediatek/mom/MobileManagerControllerBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/MobileManagerControllerBase$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mom/MobileManagerControllerBase;->a:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerControllerBase;->b:Landroid/os/IBinder;

    .line 141
    return-void
.end method

.method public static getActivityManagerService()Landroid/app/IActivityManager;
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 132
    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null activity manager service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    return-object v0
.end method

.method public static getPackageManagerService()Landroid/content/pm/IPackageManager;
    .locals 2

    .prologue
    .line 123
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null package manager service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Lcom/mediatek/mom/MobileManagerService$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    return-void
.end method

.method public enableController(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 73
    if-ne p1, v1, :cond_0

    .line 74
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 76
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->isUserAMonkey()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 77
    const-string v0, "ControllerBase"

    const-string v1, "Contrller is disabled during monkey test"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const/4 p1, 0x0

    .line 84
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/mediatek/mom/MobileManagerControllerBase;->a:Z

    .line 85
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v1, "ControllerBase"

    const-string v2, "isUserAMonkey() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getManagerApListener()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerControllerBase;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public isControllerEnabled()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/mediatek/mom/MobileManagerControllerBase;->a:Z

    return v0
.end method

.method public registerManagerApListener(Landroid/os/IBinder;)V
    .locals 3
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/mom/MobileManagerControllerBase;->b:Landroid/os/IBinder;

    .line 102
    const-string v0, "ControllerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerManagerApListener() listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-eqz p1, :cond_0

    .line 107
    :try_start_0
    new-instance v0, Lcom/mediatek/mom/MobileManagerControllerBase$a;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/mom/MobileManagerControllerBase$a;-><init>(Lcom/mediatek/mom/MobileManagerControllerBase;Landroid/os/IBinder;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v0, "ControllerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LinkToDeath() failed! listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract systemReady(Landroid/content/Context;)V
.end method
