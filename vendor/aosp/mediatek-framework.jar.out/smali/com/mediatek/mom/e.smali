.class Lcom/mediatek/mom/e;
.super Lcom/mediatek/mom/MobileManagerControllerBase;
.source "SourceFile"

# interfaces
.implements Lcom/mediatek/mom/IPackageBasedController;


# static fields
.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/mediatek/mom/MobileManagerControllerBase;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/mediatek/mom/e;->b:Ljava/util/HashMap;

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/e;->c:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerControllerBase;-><init>()V

    return-void
.end method

.method public static final a()Lcom/mediatek/mom/MobileManagerControllerBase;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/mediatek/mom/e;->c:Lcom/mediatek/mom/MobileManagerControllerBase;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/mediatek/mom/e;

    invoke-direct {v0}, Lcom/mediatek/mom/e;-><init>()V

    sput-object v0, Lcom/mediatek/mom/e;->c:Lcom/mediatek/mom/MobileManagerControllerBase;

    .line 73
    const-string v0, "FirewallController"

    const-string v1, "Create MobileManagerController:FirewallController"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    sget-object v0, Lcom/mediatek/mom/e;->c:Lcom/mediatek/mom/MobileManagerControllerBase;

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null FirewallController"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    sget-object v0, Lcom/mediatek/mom/e;->c:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-object v0
.end method


# virtual methods
.method public a(IIZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    const-string v0, ""

    .line 140
    const-string v0, "FirewallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFirewallPolicy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 145
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 146
    sget-object v4, Lcom/mediatek/mom/e;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    :goto_1
    return-void

    .line 155
    :cond_0
    :try_start_1
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 156
    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidChainRule(IIZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 157
    :catch_1
    move-exception v0

    .line 158
    const-string v1, "FirewallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public clearAllSettings()Z
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x1

    .line 90
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 93
    :try_start_0
    const-string v2, "mobile"

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearFirewallChain(Ljava/lang/String;)V

    .line 94
    const-string v2, "wifi"

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearFirewallChain(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    sget-object v1, Lcom/mediatek/mom/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 102
    return v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearPackageSettings(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onPackageStatusChange(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    const-string v0, "FirewallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageStatusChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    packed-switch p2, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 117
    :pswitch_0
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 120
    :try_start_0
    sget-object v0, Lcom/mediatek/mom/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 121
    if-eqz v0, :cond_0

    .line 122
    const-string v2, "FirewallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallUidChainRule(IIZ)V

    .line 124
    sget-object v0, Lcom/mediatek/mom/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 126
    :cond_0
    :try_start_1
    const-string v0, "FirewallController"

    const-string v1, "No found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mediatek/mom/e;->a:Landroid/content/Context;

    .line 108
    return-void
.end method
