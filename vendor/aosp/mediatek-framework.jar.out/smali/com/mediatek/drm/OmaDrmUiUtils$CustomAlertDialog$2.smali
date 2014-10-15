.class Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;
.super Ljava/lang/Object;
.source "OmaDrmUiUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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
    .line 1058
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;->this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;->this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    #getter for: Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mShowListener:Landroid/content/DialogInterface$OnShowListener;
    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->access$200(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1061
    const-string v0, "OmaDrmUiUtils"

    const-string v1, "CustomerAlertDialog: execute the original show listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;->this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    #getter for: Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mShowListener:Landroid/content/DialogInterface$OnShowListener;
    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->access$200(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;->this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    #getter for: Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->access$100(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;->this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    #getter for: Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->access$100(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1067
    :try_start_0
    const-string v0, "OmaDrmUiUtils"

    const-string v2, "CustomerAlertDialog: add this dialog to queue"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;->this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    #getter for: Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->access$100(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;->this$0:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    monitor-exit v1

    .line 1071
    :cond_1
    return-void

    .line 1069
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
