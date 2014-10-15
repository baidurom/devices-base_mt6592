.class final Lcom/android/server/am/BaiduActivityInjector;
.super Ljava/lang/Object;
.source "BaiduActivityInjector.java"


# static fields
.field public static mAccessControllInfo:Landroid/content/pm/ActivityInfo;

.field public static mAccessManager:Lcom/baidu/access/AccessControllManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/BaiduActivityInjector;->mAccessControllInfo:Landroid/content/pm/ActivityInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessControll(I)Landroid/content/pm/ActivityInfo;
    .locals 7
    .parameter "userId"

    .prologue
    const/4 v4, 0x0

    sget-object v3, Lcom/android/server/am/BaiduActivityInjector;->mAccessControllInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v5, "com.baidu.access.AccessControll"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x10400

    invoke-interface {v3, v1, v5, v6, p0}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .local v2, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :goto_0
    sput-object v3, Lcom/android/server/am/BaiduActivityInjector;->mAccessControllInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_1
    sget-object v3, Lcom/android/server/am/BaiduActivityInjector;->mAccessControllInfo:Landroid/content/pm/ActivityInfo;

    return-object v3

    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    move-object v3, v4

    goto :goto_0

    .end local v2           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sput-object v4, Lcom/android/server/am/BaiduActivityInjector;->mAccessControllInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1
.end method

.method public static getAccessControllManager(Landroid/content/Context;)Lcom/baidu/access/AccessControllManager;
    .locals 1
    .parameter "context"

    .prologue
    sget-object v0, Lcom/android/server/am/BaiduActivityInjector;->mAccessManager:Lcom/baidu/access/AccessControllManager;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/baidu/access/AccessControllManager;->getInstance(Landroid/content/Context;)Lcom/baidu/access/AccessControllManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BaiduActivityInjector;->mAccessManager:Lcom/baidu/access/AccessControllManager;

    :cond_0
    sget-object v0, Lcom/android/server/am/BaiduActivityInjector;->mAccessManager:Lcom/baidu/access/AccessControllManager;

    return-object v0
.end method

.method public static hookMoveTaskToFront(Landroid/content/Context;Lcom/android/server/am/TaskRecord;I)Z
    .locals 6
    .parameter "context"
    .parameter "task"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/server/am/BaiduActivityInjector;->getAccessControllManager(Landroid/content/Context;)Lcom/baidu/access/AccessControllManager;

    move-result-object v0

    .local v0, am:Lcom/baidu/access/AccessControllManager;
    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_0

    move v2, v3

    .local v2, isAccessControllPass:Z
    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/baidu/access/AccessControllManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/access/AccessControllManager;->isControlled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "com.android.settings"

    const-string v5, "com.baidu.access.AccessControll"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "AccessTaskId"

    iget v5, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return v3

    .end local v2           #isAccessControllPass:Z
    :cond_0
    move v2, v4

    goto :goto_0

    .restart local v2       #isAccessControllPass:Z
    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public static hookMoveTaskToFront(Lcom/android/server/am/ActivityManagerService;II)Z
    .locals 7
    .parameter "service"
    .parameter "task"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .local v4, tr:Lcom/android/server/am/TaskRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .local v1, curr:Lcom/android/server/am/TaskRecord;
    iget v6, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v6, p1, :cond_2

    move-object v4, v1

    .end local v1           #curr:Lcom/android/server/am/TaskRecord;
    :cond_0
    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, p2}, Lcom/android/server/am/BaiduActivityInjector;->hookMoveTaskToFront(Landroid/content/Context;Lcom/android/server/am/TaskRecord;I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    :goto_1
    return v5

    .restart local v1       #curr:Lcom/android/server/am/TaskRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #curr:Lcom/android/server/am/TaskRecord;
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v6, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_2
    if-ltz v3, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v6, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, hr:Lcom/android/server/am/ActivityRecord;
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v6, p1, :cond_4

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, p2}, Lcom/android/server/am/BaiduActivityInjector;->hookMoveTaskToFront(Landroid/content/Context;Lcom/android/server/am/TaskRecord;I)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .end local v2           #hr:Lcom/android/server/am/ActivityRecord;
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static hookStartActivity(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;
    .locals 9
    .parameter "service"
    .parameter "aInfo"
    .parameter "intent"
    .parameter "userId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .local v4, topActivityPkg:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v6, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v6, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_0
    if-nez v4, :cond_3

    move v3, v5

    .local v3, isSamePkg:Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/am/BaiduActivityInjector;->getAccessControllManager(Landroid/content/Context;)Lcom/baidu/access/AccessControllManager;

    move-result-object v0

    .local v0, am:Lcom/baidu/access/AccessControllManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, -0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    const/4 v2, 0x1

    .local v2, isAccessControllPass:Z
    :goto_1
    if-nez v3, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/baidu/access/AccessControllManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/baidu/access/AccessControllManager;->isControlled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p3}, Lcom/android/server/am/BaiduActivityInjector;->getAccessControll(I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .local v1, info:Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_1

    const-string v5, "AccessControll"

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object p1, v1

    .end local v1           #info:Landroid/content/pm/ActivityInfo;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2
    return-object p1

    .end local v0           #am:Lcom/baidu/access/AccessControllManager;
    .end local v2           #isAccessControllPass:Z
    .end local v3           #isSamePkg:Z
    :cond_3
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .restart local v0       #am:Lcom/baidu/access/AccessControllManager;
    .restart local v3       #isSamePkg:Z
    :cond_4
    move v2, v5

    goto :goto_1
.end method
