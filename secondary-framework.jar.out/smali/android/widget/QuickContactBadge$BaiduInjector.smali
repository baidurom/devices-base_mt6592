.class Landroid/widget/QuickContactBadge$BaiduInjector;
.super Ljava/lang/Object;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# static fields
.field private static final ACTION_STRANGE_QUICK_CONTACT:Ljava/lang/String; = "com.baidu.contacts.action.STRANGE_QUICK_CONTACT"

.field static final MINIMUM_PADDING:I = 0x2

.field static final res_id:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/QuickContactBadge$BaiduInjector;->res_id:[I

    return-void

    :array_0
    .array-data 0x4
        #drawable@baidu_p001_small#a
        #drawable@baidu_p002_small#a
        #drawable@baidu_p003_small#a
        #drawable@baidu_p004_small#a
        #drawable@baidu_p005_small#a
        #drawable@baidu_p006_small#a
        #drawable@baidu_p007_small#a
        #drawable@baidu_p008_small#a
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static enable()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method static getMax(I)I
    .locals 1
    .parameter "v"

    .prologue
    const/4 v0, 0x2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static onDraw(Landroid/widget/QuickContactBadge;Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "qcb"
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    #getter for: Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Landroid/widget/QuickContactBadge;->access$iget-mOverlay-5af51b(Landroid/widget/QuickContactBadge;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    #getter for: Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Landroid/widget/QuickContactBadge;->access$iget-mOverlay-5af51b(Landroid/widget/QuickContactBadge;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-eqz v0, :cond_0

    #getter for: Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Landroid/widget/QuickContactBadge;->access$iget-mOverlay-5af51b(Landroid/widget/QuickContactBadge;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    #getter for: Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Landroid/widget/QuickContactBadge;->access$iget-mOverlay-5af51b(Landroid/widget/QuickContactBadge;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #getter for: Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Landroid/widget/QuickContactBadge;->access$iget-mOverlay-5af51b(Landroid/widget/QuickContactBadge;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private static showStrangeQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "target"
    .parameter "createUri"
    .parameter "mode"
    .parameter "excludeMimes"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v0, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .local v0, appScale:F
    const/4 v5, 0x2

    new-array v3, v5, [I

    .local v3, pos:[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, rect:Landroid/graphics/Rect;
    aget v5, v3, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    aget v5, v3, v8

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    aget v5, v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    aget v5, v3, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.baidu.contacts.action.STRANGE_QUICK_CONTACT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1420

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    const-string v5, "mode"

    invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "exclude_mimes"

    invoke-virtual {v2, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/ActivityNotFoundException;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v5, v6, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static showStrangeQuickContact(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V
    .locals 3
    .parameter "qcb"
    .parameter "createUri"

    .prologue
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v0, p0, p1, v1, v2}, Landroid/widget/QuickContactBadge$BaiduInjector;->showStrangeQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    return-void
.end method
