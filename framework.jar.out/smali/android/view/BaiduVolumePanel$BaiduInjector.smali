.class Landroid/view/BaiduVolumePanel$BaiduInjector;
.super Ljava/lang/Object;
.source "BaiduVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/BaiduVolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaiduInjector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkThemeChanged(Landroid/view/BaiduVolumePanel;)V
    .locals 3
    .parameter "vp"

    .prologue
    iget-boolean v0, p0, Landroid/view/BaiduVolumePanel;->mIsThemeChanged:Z

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/BaiduVolumePanel;->getmStreamControls()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/BaiduVolumePanel;->getmStreamControls()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Landroid/view/BaiduVolumePanel;->createSlidersBaidu()V

    invoke-virtual {p0}, Landroid/view/BaiduVolumePanel;->getmActiveStreamType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/BaiduVolumePanel;->reorderSlidersBaidu(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/BaiduVolumePanel;->getmPanel()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/BaiduVolumePanel;->getmPanel()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/view/BaiduVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #drawable@yi_dialog_full_baidu_light#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/BaiduVolumePanel;->mIsThemeChanged:Z

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static handleMessage(Landroid/view/BaiduVolumePanel;Landroid/os/Message;)V
    .locals 1
    .parameter "volumePanel"
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/BaiduVolumePanel;->mIsThemeChanged:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
