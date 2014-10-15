.class public Lcom/mediatek/mom/MobileManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mediatek/common/mom/IMobileManager;


# instance fields
.field a:Lcom/mediatek/mom/MobileManager;

.field private b:Landroid/content/Context;

.field private c:Lcom/mediatek/common/mom/IMobileManagerService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mom/MobileManager;->a:Lcom/mediatek/mom/MobileManager;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/common/mom/IMobileManagerService;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mom/MobileManager;->a:Lcom/mediatek/mom/MobileManager;

    .line 42
    iput-object p1, p0, Lcom/mediatek/mom/MobileManager;->b:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 44
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null MobileManagerService!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/mediatek/common/mom/IMobileConnectionCallback;)Z
    .locals 3
    .parameter

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->attach(Lcom/mediatek/common/mom/IMobileConnectionCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 66
    :goto_0
    return v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "MobileManager"

    const-string v2, "attach() failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelNotification(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->cancelNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cancelNotification() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearAllSettings()V
    .locals 3

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0}, Lcom/mediatek/common/mom/IMobileManagerService;->clearAllSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v1, "MobileManager"

    const-string v2, "clearAllSettings() failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearPackageSettings(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->clearPackageSettings(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " clearPackageSettings() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deletePackage(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->deletePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " deletePackage() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public detach()V
    .locals 3

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0}, Lcom/mediatek/common/mom/IMobileManagerService;->detach()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string v1, "MobileManager"

    const-string v2, "detach() failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableInterceptionController(Z)V
    .locals 4
    .parameter

    .prologue
    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->enableInterceptionController(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " enableInterceptionController() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enablePermissionController(Z)V
    .locals 4
    .parameter

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->enablePermissionController(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " enablePermissionController() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " forceStopPackage() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBootReceiverEnabledSetting(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->getBootReceiverEnabledSetting(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 187
    :goto_0
    return v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getBootReceiverEnabledSetting() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstalledPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0}, Lcom/mediatek/common/mom/IMobileManagerService;->getInstalledPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v1, "MobileManager"

    const-string v2, " getInstalledPackages() failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotificationEnabledSetting(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->getNotificationEnabledSetting(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 264
    :goto_0
    return v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getNotificationEnabledSetting() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->getPackageGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getPackageGrantedPermissions() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0}, Lcom/mediatek/common/mom/IMobileManagerService;->getVersionName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "MobileManager"

    const-string v2, "getVersionName() failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public installPackage(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->installPackage(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " installPackage() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerCallInterceptionListener(Lcom/mediatek/common/mom/ICallInterceptionListener;)V
    .locals 5
    .parameter

    .prologue
    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v3, 0x6

    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    move-object v1, v0

    invoke-interface {v2, v3, v1}, Lcom/mediatek/common/mom/IMobileManagerService;->registerManagerApListener(ILandroid/os/IBinder;)V

    .line 310
    iget-object v2, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    const/16 v3, 0x8

    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    move-object v1, v0

    invoke-interface {v2, v3, v1}, Lcom/mediatek/common/mom/IMobileManagerService;->registerManagerApListener(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v1

    .line 312
    const-string v2, "MobileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " registerCallInterceptionListener() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerMessageInterceptListener(Lcom/mediatek/common/mom/IMessageInterceptListener;)V
    .locals 5
    .parameter

    .prologue
    .line 340
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v3, 0x5

    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    move-object v1, v0

    invoke-interface {v2, v3, v1}, Lcom/mediatek/common/mom/IMobileManagerService;->registerManagerApListener(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v1

    .line 343
    const-string v2, "MobileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " registerMessageInterceptListener() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerNotificationListener(Lcom/mediatek/common/mom/INotificationListener;)V
    .locals 5
    .parameter

    .prologue
    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v3, 0x3

    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    move-object v1, v0

    invoke-interface {v2, v3, v1}, Lcom/mediatek/common/mom/IMobileManagerService;->registerManagerApListener(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v1

    .line 272
    const-string v2, "MobileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " registerNotificationListener() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerPermissionListener(Lcom/mediatek/common/mom/IPermissionListener;)V
    .locals 5
    .parameter

    .prologue
    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    move-object v1, v0

    invoke-interface {v2, v3, v1}, Lcom/mediatek/common/mom/IMobileManagerService;->registerManagerApListener(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v1

    .line 128
    const-string v2, "MobileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " registerPermissionListener() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBootReceiverEnabledSetting(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->setBootReceiverEnabledSetting(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setBootReceiverEnabledSetting() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFirewallPolicy(IIZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/common/mom/IMobileManagerService;->setFirewallPolicy(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setFirewallPolicy() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNotificationCache(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/NotificationCacheRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->setNotificationCache(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    const-string v1, "MobileManager"

    const-string v2, " setNotificationCache()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNotificationEnabledSetting(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->setNotificationEnabledSetting(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setNotificationEnabledSetting() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPermissionCache(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->setPermissionCache(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setPermissionCache() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPermissionRecord(Lcom/mediatek/common/mom/PermissionRecord;)V
    .locals 4
    .parameter

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->setPermissionRecord(Lcom/mediatek/common/mom/PermissionRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setPermissionRecord() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPermissionRecords(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManager;->c:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v0, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->setPermissionRecords(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setPermissionRecord() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
