.class Lcom/mediatek/mom/o;
.super Lcom/mediatek/mom/MobileManagerControllerBase;
.source "SourceFile"

# interfaces
.implements Lcom/mediatek/mom/IPackageBasedController;


# static fields
.field private static a:Lcom/mediatek/mom/MobileManagerControllerBase;


# instance fields
.field private b:Landroid/app/IActivityManager;

.field private c:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/o;->a:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerControllerBase;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/mediatek/mom/o;->b:Landroid/app/IActivityManager;

    .line 69
    iput-object v0, p0, Lcom/mediatek/mom/o;->c:Landroid/content/pm/IPackageManager;

    .line 79
    return-void
.end method

.method public static final a()Lcom/mediatek/mom/MobileManagerControllerBase;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/mediatek/mom/o;->a:Lcom/mediatek/mom/MobileManagerControllerBase;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/mediatek/mom/o;

    invoke-direct {v0}, Lcom/mediatek/mom/o;-><init>()V

    sput-object v0, Lcom/mediatek/mom/o;->a:Lcom/mediatek/mom/MobileManagerControllerBase;

    .line 75
    :cond_0
    sget-object v0, Lcom/mediatek/mom/o;->a:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 169
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBootReceiverEnabledSetting("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/o;->c:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->grantPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mom/o;->c:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->revokePermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 189
    const-string v1, "ReceiverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBootReceiverEnabledSetting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mom/o;->c:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x1000

    iget-object v3, p0, Lcom/mediatek/mom/o;->b:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 192
    if-eqz v2, :cond_2

    .line 193
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_0

    move v1, v0

    .line 194
    :goto_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 195
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v1

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 197
    const/4 v0, 0x1

    .line 209
    :cond_0
    return v0

    .line 194
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_2
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearAllSettings()Z
    .locals 7

    .prologue
    .line 95
    const-string v0, "ReceiverController"

    const-string v1, "clearAllSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/mediatek/mom/o;->b:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/mediatek/mom/o;->c:Landroid/content/pm/IPackageManager;

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getInstalledApplications(ILjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 103
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/ParceledListSlice;->populateList(Ljava/util/List;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 104
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->isLastSlice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 107
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 109
    const-string v3, "ReceiverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applicationInfo.packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/mediatek/mom/o;->c:Landroid/content/pm/IPackageManager;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x1000

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v0, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 112
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x0

    :goto_1
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 114
    const-string v4, "ReceiverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageInfo.requestedPermissions["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v0, v4, v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 117
    const-string v0, "ReceiverController"

    const-string v4, "REQUESTED_PERMISSION_GRANTED"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/mediatek/mom/o;->c:Landroid/content/pm/IPackageManager;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-interface {v0, v3, v4}, Landroid/content/pm/IPackageManager;->grantPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 113
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public clearPackageSettings(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 83
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPackageSettings("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/o;->c:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->revokePermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v0, 0x1

    return v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/mediatek/mom/MobileManagerService$a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    const-string v0, "ReceiverController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public onPackageStatusChange(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 146
    const-string v0, "ReceiverController"

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

    .line 147
    packed-switch p2, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 149
    :pswitch_0
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PACKAGE_ADDED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :pswitch_1
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PACKAGE_UPDATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :pswitch_2
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PACKAGE_REMOVED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    invoke-static {}, Lcom/mediatek/mom/o;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/o;->c:Landroid/content/pm/IPackageManager;

    .line 141
    invoke-static {}, Lcom/mediatek/mom/o;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/o;->b:Landroid/app/IActivityManager;

    .line 142
    return-void
.end method
