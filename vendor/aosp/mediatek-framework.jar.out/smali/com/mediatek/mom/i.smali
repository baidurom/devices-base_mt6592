.class Lcom/mediatek/mom/i;
.super Lcom/mediatek/mom/MobileManagerControllerBase;
.source "SourceFile"

# interfaces
.implements Lcom/mediatek/mom/IPackageBasedController;


# static fields
.field private static d:Lcom/mediatek/mom/MobileManagerControllerBase;


# instance fields
.field private a:Landroid/app/INotificationManager;

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/i;->d:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerControllerBase;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/i;->b:Ljava/util/HashSet;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mom/i;->c:Z

    .line 79
    return-void
.end method

.method public static final a()Lcom/mediatek/mom/MobileManagerControllerBase;
    .locals 3

    .prologue
    .line 95
    sget-object v0, Lcom/mediatek/mom/i;->d:Lcom/mediatek/mom/MobileManagerControllerBase;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/mediatek/mom/i;

    invoke-direct {v0}, Lcom/mediatek/mom/i;-><init>()V

    sput-object v0, Lcom/mediatek/mom/i;->d:Lcom/mediatek/mom/MobileManagerControllerBase;

    .line 97
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Create MobileManagerController: NotificationController"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 99
    :cond_0
    sget-object v0, Lcom/mediatek/mom/i;->d:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-object v0
.end method

.method private b()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/mom/i;->a:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/mediatek/mom/i;->a:Landroid/app/INotificationManager;

    .line 86
    :goto_0
    return-object v0

    .line 85
    :cond_0
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/i;->a:Landroid/app/INotificationManager;

    .line 86
    iget-object v0, p0, Lcom/mediatek/mom/i;->a:Landroid/app/INotificationManager;

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/mom/i;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 91
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/mom/i;->b()Landroid/app/INotificationManager;

    move-result-object v0

    .line 136
    const-string v3, "MoMS.NotificationController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelNotification for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz v0, :cond_0

    .line 140
    const-string v3, "MoMS.NotificationController"

    const-string v4, "cancelNotification in NMS"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v0, p1, v3}, Landroid/app/INotificationManager;->removeAllNotifications(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    :try_start_1
    const-string v0, "NotificationController"

    const-string v3, "cancelNotification() faild!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 153
    const-string v1, "MoMS.NotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string v0, "en"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "abling notifications for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-eqz p2, :cond_1

    .line 156
    iget-object v0, p0, Lcom/mediatek/mom/i;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 160
    :goto_1
    return-void

    .line 153
    :cond_0
    const-string v0, "dis"

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mom/i;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public a(Ljava/util/List;)V
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
    .line 172
    invoke-direct {p0}, Lcom/mediatek/mom/i;->c()V

    .line 173
    if-eqz p1, :cond_1

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 177
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/NotificationCacheRecord;

    .line 179
    if-eqz v0, :cond_0

    .line 180
    iget-object v2, v0, Lcom/mediatek/common/mom/NotificationCacheRecord;->packageName:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/mediatek/common/mom/NotificationCacheRecord;->enable:Z

    invoke-virtual {p0, v2, v0}, Lcom/mediatek/mom/i;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 184
    :cond_1
    const-string v0, "MoMS.NotificationController"

    const-string v1, "setNotificationCache to null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mediatek/mom/i;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 165
    :goto_0
    const-string v2, "MoMS.NotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifications are "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v1, "en"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "abled for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :cond_1
    const-string v1, "dis"

    goto :goto_1
.end method

.method public clearAllSettings()Z
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/mediatek/mom/i;->c()V

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public clearPackageSettings(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/mom/i;->a(Ljava/lang/String;Z)V

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public onPackageStatusChange(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 190
    const-string v0, "MoMS.NotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageStatusChange() packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    packed-switch p2, :pswitch_data_0

    .line 203
    :goto_0
    :pswitch_0
    return-void

    .line 198
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/mom/i;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/i;->c:Z

    .line 121
    invoke-direct {p0}, Lcom/mediatek/mom/i;->b()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null INotificationManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    return-void
.end method
