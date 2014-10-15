.class Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;
.super Ljava/lang/Object;
.source "OmaDrmUiUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    #getter for: Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->access$000(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    const-string v0, "OmaDrmUiUtils"

    const-string v1, "CustomerAlertDialog: execute the original dismiss listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    #getter for: Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->access$000(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    #getter for: Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->access$100(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    #getter for: Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->access$100(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1049
    :try_start_0
    const-string v0, "OmaDrmUiUtils"

    const-string v2, "CustomerAlertDialog: remove this dialog from queue"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    #getter for: Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->access$100(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1051
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->access$102(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1054
    return-void

    .line 1051
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
